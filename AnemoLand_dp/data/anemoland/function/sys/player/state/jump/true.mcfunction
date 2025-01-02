
execute unless score @s jump_time matches 1.. run function anemoland:sys/player/state/jump/start

scoreboard players add @s jump_time 1

execute if score @s jump_time matches 2.. unless predicate anemoland:input/jump run tag @s add can_avoid

execute if entity @s[gamemode=!adventure] run return 1

execute if score @s jump_time matches 3.. if predicate anemoland:input/jump if entity @s[tag=can_avoid,tag=!cannot_avoid] run function anemoland:sys/player/state/jump/avoid/0
execute if score @s jump_time matches 3.. if predicate anemoland:input/jump if entity @s[tag=can_avoid,tag=cannot_avoid] if block ~ ~ ~ water run function anemoland:sys/player/state/jump/avoid/0
