
# tellraw @a {"selector": "@s"}
scoreboard players set #attacker_flag temp 1

execute if entity @s[type=player] run function anemoland:sys/entity/common/drop_gold_xp/on_attacker/player/0

execute if entity @s[type=!player] run function anemoland:sys/entity/common/drop_gold_xp/on_attacker/other/0
