scoreboard players set @s action0 11
scoreboard players set @s action1 1
scoreboard players set @s action_time 0

execute if score @s action_way matches 0 run function rpg:sys/entity/mob/martellos/animation/knock_left2
execute if score @s action_way matches 1 run function rpg:sys/entity/mob/martellos/animation/knock_right2
