scoreboard players set @s action1 1
scoreboard players set @s action_time 0

function anemoland_contents:sys/entity/mob/muscleroom/animation/left_punch2

scoreboard players set @s action_way 0
execute if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run scoreboard players set @s action_way 1
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..8,limit=1] run scoreboard players set @s action_way 2
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..12,limit=1] run scoreboard players set @s action_way 3
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..16,limit=1] run scoreboard players set @s action_way 4
