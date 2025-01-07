scoreboard players set @s action1 1
scoreboard players set @s action_time 0
execute if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/squirrel_head/animation/tackle_left2
execute if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/squirrel_head/animation/tackle_right2

execute as @a[distance=..64] at @s run playsound minecraft:entity.player.attack.sweep hostile @s ~ ~ ~ 1 0
