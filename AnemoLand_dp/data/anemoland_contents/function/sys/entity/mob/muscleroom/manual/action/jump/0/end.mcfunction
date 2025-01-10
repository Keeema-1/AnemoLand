scoreboard players set @s action_way 0
execute if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run scoreboard players set @s action_way 1
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..8,limit=1] run scoreboard players set @s action_way 2
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..12,limit=1] run scoreboard players set @s action_way 3
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..16,limit=1] run scoreboard players set @s action_way 4

function anemoland_contents:sys/entity/mob/muscleroom/tick/action/jump/1/start
