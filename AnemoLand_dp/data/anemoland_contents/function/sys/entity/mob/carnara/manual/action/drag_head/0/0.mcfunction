
function anemoland:sys/entity/common/target_direction/is_leftside

execute if score @s action_time matches ..20 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-1 ~
execute if score @s action_time matches ..20 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~1 ~
execute if score @s action_time matches 21..40 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-0.5 ~
execute if score @s action_time matches 21..40 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~0.5 ~
execute if score @s action_time matches 41.. if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-0.2 ~
execute if score @s action_time matches 41.. unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~0.2 ~

execute if score @s action_time matches 50.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/drag_head/1/start
execute if entity @s[tag=angry] if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/drag_head/1/start
