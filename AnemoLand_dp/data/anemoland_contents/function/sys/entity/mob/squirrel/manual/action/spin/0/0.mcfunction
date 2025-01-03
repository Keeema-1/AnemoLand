
execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

execute if score @s action_time matches ..40 at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 41..50 if score @s action_way matches 0 run tp @s ~ ~ ~ ~2 ~
execute if score @s action_time matches 41..50 if score @s action_way matches 1 run tp @s ~ ~ ~ ~-2 ~

execute if score @s action_time matches 50.. run function anemoland_contents:sys/entity/mob/squirrel/manual/action/spin/1/start
