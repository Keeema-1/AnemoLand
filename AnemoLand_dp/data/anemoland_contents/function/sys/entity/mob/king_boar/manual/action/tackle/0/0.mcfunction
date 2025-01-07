
execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/target_direction/is_leftside

execute if score @s action_time matches ..20 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-2 ~
execute if score @s action_time matches ..20 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~2 ~

execute if score @s action_time matches 21..40 run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 41.. run function anemoland_contents:sys/entity/mob/king_boar/manual/action/tackle/1/start
