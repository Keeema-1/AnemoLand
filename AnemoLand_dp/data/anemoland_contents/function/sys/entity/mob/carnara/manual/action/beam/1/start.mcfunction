scoreboard players set @s action1 1
scoreboard players set @s action_time 0

function anemoland_contents:sys/entity/mob/carnara/animation/beam2

execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 0

execute if predicate anemoland:random_chance/0_5 run return 1

execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

execute if score #target_is_leftside temp matches 1 run function anemoland_contents:sys/entity/mob/carnara/animation/beam2_left
execute unless score #target_is_leftside temp matches 1 run function anemoland_contents:sys/entity/mob/carnara/animation/beam2_right
