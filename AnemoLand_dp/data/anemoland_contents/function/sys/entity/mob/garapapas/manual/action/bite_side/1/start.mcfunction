scoreboard players set @s action1 1
scoreboard players set @s action_time 0
execute if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/garapapas/animation/bite_left2
execute if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/garapapas/animation/bite_right2

execute as @a[distance=..64] at @s run playsound entity.polar_bear.hurt hostile @s ~ ~ ~ 1 0.6
