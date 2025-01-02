tag @s add hostile_target
scoreboard players set #hostile_target.exist temp 1

data modify storage temp:_ data.target_uuid set from entity @s UUID