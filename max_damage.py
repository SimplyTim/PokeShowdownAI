import asyncio
import time
import gym

from poke_env.player.player import Player
from poke_env.player.random_player import RandomPlayer
from poke_env.player_configuration import PlayerConfiguration
from poke_env.server_configuration import ShowdownServerConfiguration

class MaxDamagePlayer(Player):
    def choose_move(self, battle):
        print(battle.opponent_active_pokemon.base_stats['spd'])
        print(battle.active_pokemon.stats)

        # If the player can attack, it will
        if battle.available_moves:
            # Finds the best move among available ones
            dmg = [0,0,0,0]
            options = battle.available_moves
            for i, move in enumerate(options):
                dmg[i] += (move.base_power)  

                if move.type:
                    dmg[i] *= move.type.damage_multiplier(
                        battle.opponent_active_pokemon.type_1,
                        battle.opponent_active_pokemon.type_2,
                    )
            best_move = dmg.index(max(dmg))
            return self.create_order(options[best_move])

        # If no attack is available, a random switch will be made
        else:
            return self.choose_random_move(battle)


async def main():
    start = time.time()

    max_damage_player = MaxDamagePlayer(
        battle_format="gen8randombattle",
        player_configuration= PlayerConfiguration("hisorryimverybad", "balls9"),
        server_configuration=ShowdownServerConfiguration
    )

    # Now, let's evaluate our player
    await max_damage_player.ladder(1)



if __name__ == "__main__":
    asyncio.get_event_loop().run_until_complete(main())