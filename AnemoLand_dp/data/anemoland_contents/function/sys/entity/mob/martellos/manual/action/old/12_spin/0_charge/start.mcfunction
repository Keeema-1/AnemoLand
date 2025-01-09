scoreboard players set @s action0 12
scoreboard players set @s action1 0
scoreboard players set @s action_time 0

execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

execute if score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 1
execute unless score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 0

scoreboard players set @s action_way 1
execute if score @s action_way matches 0 run function rpg:sys/entity/mob/martellos/animation/spin_left1
execute if score @s action_way matches 1 run function rpg:sys/entity/mob/martellos/animation/spin_right1

execute as @a[distance=..64] at @s run playsound entity.polar_bear.hurt hostile @s ~ ~ ~ 1 0.5

tag @s add warning