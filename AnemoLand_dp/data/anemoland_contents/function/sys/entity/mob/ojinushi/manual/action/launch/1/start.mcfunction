scoreboard players set @s action1 1
scoreboard players set @s action_time 0

function anemoland_contents:sys/entity/mob/ojinushi/animation/launch2

scoreboard players set @s action_way 0
execute if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..8,limit=1] run scoreboard players set @s action_way 1
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..12,limit=1] run scoreboard players set @s action_way 2
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..16,limit=1] run scoreboard players set @s action_way 3
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..20,limit=1] run scoreboard players set @s action_way 4
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] run scoreboard players set @s action_way 5

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 2 1.1
