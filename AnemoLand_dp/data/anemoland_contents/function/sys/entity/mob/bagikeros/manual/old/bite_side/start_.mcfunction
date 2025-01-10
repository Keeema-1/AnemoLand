execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 2 0.6

execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

execute if score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 1
execute unless score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 0

execute if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/bagikeros/animation/bite_left1
execute if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/bagikeros/animation/bite_right1
