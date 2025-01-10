
execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

execute if score @s action_time matches ..20 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~2 ~
execute if score @s action_time matches ..20 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-2 ~
execute if score @s action_time matches 21..40 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~1 ~
execute if score @s action_time matches 21..40 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-1 ~
execute if score @s action_time matches 41.. if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~0.5 ~
execute if score @s action_time matches 41.. unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-0.5 ~

execute if score @s action_time matches 50.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/drag_tail/1/start
execute if entity @s[tag=angry] if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/drag_tail/1/start
