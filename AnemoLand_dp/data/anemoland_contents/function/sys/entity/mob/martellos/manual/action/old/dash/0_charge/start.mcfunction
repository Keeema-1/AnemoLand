
scoreboard players set @s action1 0
scoreboard players set @s action_time 0

function anemoland_contents:sys/entity/mob/martellos/animation/dash_charge

execute as @a[distance=..64] at @s run playsound entity.polar_bear.death hostile @s ~ ~ ~ 1 0.5

tag @s add warning