import numpy as np
import tensorflow as tf
import math
import asyncio
import time
import gym

from poke_env.player.env_player import Gen8EnvSinglePlayer
from poke_env.player.random_player import RandomPlayer
from poke_env.player_configuration import PlayerConfiguration
from poke_env.server_configuration import ShowdownServerConfiguration

from rl.agents.dqn import DQNAgent
from rl.policy import LinearAnnealedPolicy, EpsGreedyQPolicy
from rl.memory import SequentialMemory
from tensorflow.keras.layers import Dense, Flatten
from tensorflow.keras.models import Sequential
from tensorflow.keras.optimizers import Adam

from poke_env.player_configuration import PlayerConfiguration
from poke_env.server_configuration import ShowdownServerConfiguration

# We define our RL player
# It needs a state embedder and a reward computer, hence these two methods
class SimpleRLPlayer(Gen8EnvSinglePlayer):
    def embed_battle(self, battle):
        # -1 indicates that the move does not have a base power
        # or is not available
        moves_base_power = -np.ones(4)
        moves_dmg_multiplier = np.ones(4)
        for i, move in enumerate(battle.available_moves):
            moves_base_power[i] = (
                move.base_power / 100
            )  # Simple rescaling to facilitate learning
            if move.type:
                moves_dmg_multiplier[i] = move.type.damage_multiplier(
                    battle.opponent_active_pokemon.type_1,
                    battle.opponent_active_pokemon.type_2,
                )

        # We count how many pokemons have not fainted in each team
        remaining_mon_team = (
            len([mon for mon in battle.team.values() if mon.fainted]) / 6
        )
        remaining_mon_opponent = (
            len([mon for mon in battle.opponent_team.values() if mon.fainted]) / 6
        )

        # Final vector with 10 components
        return np.concatenate(
            [
                moves_base_power,
                moves_dmg_multiplier,
                [remaining_mon_team, remaining_mon_opponent],
            ]
        )

    def compute_reward(self, battle) -> float:
        return self.reward_computing_helper(
            battle, fainted_value=2, hp_value=1, victory_value=30
        )

NB_TRAINING_STEPS = 10000
NB_EVALUATION_EPISODES = 100

tf.random.set_seed(0)
np.random.seed(0)


# This is the function that will be used to train the dqn
def dqn_training(player, dqn, nb_steps):
    dqn.fit(player, nb_steps=nb_steps)
    player.complete_current_battle()


def dqn_evaluation(player, dqn, nb_episodes):
    # Reset battle statistics
    player.reset_battles()
    dqn.test(player, nb_episodes=nb_episodes, visualize=True, verbose=False)

    print(
        "DQN Evaluation: %d victories out of %d episodes"
        % (player.n_won_battles, nb_episodes)
    )


if __name__ == "__main__":
    env_player = SimpleRLPlayer(
        battle_format="gen8randombattle",
        player_configuration= PlayerConfiguration("hisorryimverybad", "balls9"),
        server_configuration=ShowdownServerConfiguration,
        start_timer_on_battle_start=True)
    
    player2 = SimpleRLPlayer(battle_format="gen8randombattle",
        player_configuration= PlayerConfiguration("XtremeOne", "timothy98"),
        server_configuration=ShowdownServerConfiguration,
        start_timer_on_battle_start=True)
    
    # Output dimension
    n_action = len(env_player.action_space)

    model = tf.keras.models.load_model('model_10000')

    memory = SequentialMemory(limit=10000, window_length=1)

    # Ssimple epsilon greedy
    policy = LinearAnnealedPolicy(
        EpsGreedyQPolicy(),
        attr="eps",
        value_max=1.0,
        value_min=0.05,
        value_test=0,
        nb_steps=10000,
    )

    # Defining our DQN
    dqn = DQNAgent(
        model=model,
        nb_actions=len(env_player.action_space),
        policy=policy,
        memory=memory,
        nb_steps_warmup=1000,
        gamma=0.5,
        target_model_update=1,
        delta_clip=0.01,
        enable_double_dqn=True,
    )

    dqn.compile(Adam(lr=0.00025), metrics=["mae"])

    env_player.play_against(
    env_algorithm=dqn_evaluation,
    opponent=player2,
    env_algorithm_kwargs={"dqn": dqn, "nb_episodes": NB_EVALUATION_EPISODES},
    )