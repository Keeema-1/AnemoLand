scoreboard players set @s action1 1
scoreboard players set @s action_time 0

execute if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/martellos/animation/tail_left1
execute if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/martellos/animation/tail_right1
