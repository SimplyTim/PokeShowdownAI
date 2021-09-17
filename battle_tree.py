# Making a flow of events, consisting of functions that essentially emulate what I think about during a battle.

# I will be using some things from the poke_env interface, because it is really helpful.

import poke_env.environment.pokemon
import poke_env.environment.pokemon_type
import math
import asyncio
import time
import gym
import keys

from poke_env.player.player import Player
from poke_env.player.random_player import RandomPlayer
from poke_env.player_configuration import PlayerConfiguration
from poke_env.server_configuration import ShowdownServerConfiguration


# Lets get started on the functions.
# I determined when I do a battle, the first thing I do is observe the state, and my options.
# So firstly, let's make a function to do a simple check to see who has the current type advantage in the current matchup.

# I will do this using the damage_multipler function. Essentially, I can check whether a specific type has a damage multiplier
# on my current pokemon. Since moves can only be one type, I can determine the worst case scenario for my current pokemon;
# the highest damage multipler.

def type_check(battle):
    your_poke = battle.active_pokemon
    opp_poke = battle.opponent_active_pokemon

    dmg_multiplier = max(your_poke.damage_multiplier(opp_poke.type_1), your_poke.damage_multiplier(opp_poke.type_2))

    if (dmg_multiplier >= 2.0 and not (battle.maybe_trapped or battle.trapped) and battle.available_switches and your_poke.boosts is not None) or not battle.available_moves:
        return switch(battle)
    else:
        return stay_in(battle)

# Basically if I am at a 2x or greater damage multipler disadvantage, I want to switch or kill the enemy. 
# If not, I will stay in and raise some hell.
# Obviously, if I'm trapped (Arena Trap, Shadow Tag, etc), I can't switch, so..

# Okay, so let's say we decide to stay in. 
# First, let's consider both pokemon's health.
# Then, let's consider both pokemon's speed. We always consider the maximum possible speed from the opponent.
def stay_in(battle):
    opp_poke = battle.opponent_active_pokemon
    your_poke = battle.active_pokemon
    
    opp_hp = opp_poke.current_hp
    your_hp = your_poke.current_hp

# So, there is a formula that is used to calculate a stat based on the base stats. I need to do this, because
# it doesn't seem like pokeenv gives me a way to do this. I use a helped function I made.
    opp_speed = assumeSpeed(opp_poke.base_stats['spd'], opp_poke.level)
    your_speed = your_poke.stats['spd']

# If I am faster, let's attack, because why not?
# If I am slower, we will try to use a priority or status move or dynamax or mega-evolve. If not, 
# I will simply attack.

    if your_hp < opp_hp:
        if battle.available_moves:
            dmg = [0,0,0,0]
            options = battle.available_moves
            for i, move in enumerate(options):
                if move.priority > 1:
                    print("Used a priority move.")
                    return options[i]
                
                if move.heal > 0 and your_hp <= 60:
                    print("Used a healing move.")
                    return options[i]
                
                if move.status is not None and opp_poke.status is None and move.type not in opp_poke.types:
                    print("Used a status move.")
                    return options[i]

                if move.boosts is not None and your_poke.boosts is None:
                    print("Used a boosting move.")
                    return options[i]

                dmg[i] += (move.base_power)  
                if move.type:
                    dmg[i] *= move.type.damage_multiplier(
                        battle.opponent_active_pokemon.type_1,
                        battle.opponent_active_pokemon.type_2,
                    )
                if move.type == your_poke.type_1 or move.type == your_poke.type_2:
                    dmg[i] *= 1.5

            best_move = dmg.index(max(dmg))
            print("Using a damaging move.")
            return options[best_move]
    else:
        print("Using max damaging move.")
        return maxDmg(battle)
            



# This is a helper function used to find the speed of a Pokemon, given their base speed and level.
# I want to assume 31 IVs and 252 Evs in speed, and a neutral nature. This may not always be 
# optimal, since a for a Pokemon with a Speed-enhancing nature, the bot will under-compensate for this speed.
# However, I also do not want to over-compensate for the opponent's speed. I think this will provide a good
# balance, for Pokemon with a Speed-enhancing nature, but not full speed Evs.
def assumeSpeed(base, level):
    speed = math.floor(((2.0 * base + 31.0 + math.floor(252.0/4.0))*level)/100)+5
    return speed

# This is a helper function that simply attacks with the highest power move on the current pokemon, taking typing 
# and STAB into account.
def maxDmg(battle):
    if battle.available_moves:
        dmg = [0,0,0,0]
        options = battle.available_moves
        for i, move in enumerate(options):
            dmg[i] += (move.base_power)  
            if move.type:
                dmg[i] *= move.type.damage_multiplier(
                    battle.opponent_active_pokemon.type_1,
                    battle.opponent_active_pokemon.type_2,
                )
            if move.type == battle.active_pokemon.type_1 or move.type == battle.active_pokemon.type_2:
                dmg[i] *= 1.5

        best_move = dmg.index(max(dmg))
        return options[best_move]

# This is a helper function that checks if your current pokemon has less hp than the opponent.
def checkHP(battle):
    your_poke = battle.active_pokemon
    opp_poke = battle.opponent_active_pokemon
    return your_poke.current_hp_fraction < opp_poke.current_hp_fraction

# If we are switching, we want to switch to a Pokemon with a super efffective move against the current opponent.
def switch(battle):
    opp_type_1 = battle.opponent_active_pokemon.type_1
    opp_type_2 = battle.opponent_active_pokemon.type_2
    for switcher in battle.available_switches:
        for move_name in switcher.moves:
            move = switcher.moves[move_name]
            dmg = move.type.damage_multiplier(
                        battle.opponent_active_pokemon.type_1,
                        battle.opponent_active_pokemon.type_2
            )
            if dmg >= 2.0:
                print("Switching to a Pokemon with a super effective move.")
                return switcher
    '''
    for switcher in battle.available_switches:
        if switcher.current_hp_fraction > battle.active_pokemon.current_hp_fraction:
            print("Switching to a Pokemon with more HP.")
            return switcher
    '''
        
    # If all else fails, just stay in I guess:
    return stay_in(battle)

# Okay now, let's set up the class:

class SemiSmartPlayer(Player):
    def choose_move(self, battle):
        try:
            action = type_check(battle)

            opp_speed = assumeSpeed(battle.opponent_active_pokemon.base_stats['spd'], battle.opponent_active_pokemon.level)
            your_speed = battle.active_pokemon.stats['spd']
            if (battle.opponent_active_pokemon.is_dynamaxed) and battle.can_dynamax:
                return self.create_order(action, dynamax=True)
            elif (opp_speed >= your_speed or battle.opponent_active_pokemon.current_hp_fraction > battle.active_pokemon.current_hp_fraction) and battle.can_mega_evolve:
                return self.create_order(action, mega=True)
            else:
                return self.create_order(action)
        except:
            print("Rules failed. Selecting random move.")
            return self.create_order(self.choose_random_move(battle))


async def main():
    start = time.time()

    semi_smart_player = SemiSmartPlayer(
        battle_format="gen8randombattle",
        player_configuration= PlayerConfiguration(keys.username, keys.pw),
        server_configuration=ShowdownServerConfiguration,
        start_timer_on_battle_start=True
    )

    # Now, let's evaluate our player
    await semi_smart_player.ladder(1)

if __name__ == "__main__":
    asyncio.get_event_loop().run_until_complete(main())
