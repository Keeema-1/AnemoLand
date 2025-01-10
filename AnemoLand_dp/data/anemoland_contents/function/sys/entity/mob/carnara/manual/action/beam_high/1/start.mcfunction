scoreboard players set @s action1 1
scoreboard players set @s action_time 0

execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 0

execute if score @s action_way matches 0 if predicate anemoland:random_chance/0_5 run return run function anemoland_contents:sys/entity/mob/carnara/animation/beam_high_left2_far
execute if score @s action_way matches 0 run return run function anemoland_contents:sys/entity/mob/carnara/animation/beam_high_left2
execute if score @s action_way matches 1 if predicate anemoland:random_chance/0_5 run return run function anemoland_contents:sys/entity/mob/carnara/animation/beam_high_right2_far
execute if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/carnara/animation/beam_high_right2
