scoreboard players set @s action1 1
scoreboard players set @s action_time 0

function anemoland_contents:sys/entity/mob/ojinushi/animation/jump_launch2_right

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 2 1.1
