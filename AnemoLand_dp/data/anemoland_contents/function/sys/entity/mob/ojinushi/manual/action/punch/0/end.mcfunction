scoreboard players set @s action_way 0
execute if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run scoreboard players set @s action_way 1
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..8,limit=1] run scoreboard players set @s action_way 2
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..12,limit=1] run scoreboard players set @s action_way 3
execute if score @s action_way matches 0 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..16,limit=1] run scoreboard players set @s action_way 4

function anemoland_contents:sys/entity/mob/ojinushi/tick/action/punch/1/start

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 2 1.1