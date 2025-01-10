
execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

execute if score @s action_time matches ..10 at @s run tp @s ~ ~ ~ ~-4 ~
execute if score @s action_time matches 11..20 at @s run tp @s ~ ~ ~ ~ ~
execute if score @s action_time matches 21..30 at @s run tp @s ~ ~ ~ ~4 ~
execute if score @s action_time matches 31..40 at @s run tp @s ~ ~ ~ ~-4 ~
execute if score @s action_time matches 41.. at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 10..15 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 1 0
execute if score @s action_time matches 30..35 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 1 0

execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s rotated ~180 0 rotated ~-60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/1
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s rotated ~180 0 rotated ~-60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/3
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~180 0 rotated ~-60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/4
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s rotated ~180 0 rotated ~-100 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/1
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s rotated ~180 0 rotated ~-100 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/3
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~180 0 rotated ~-100 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/4
execute if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 at @s rotated ~180 0 rotated ~-20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/1
execute if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 at @s rotated ~180 0 rotated ~-20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/3
execute if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~180 0 rotated ~-20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/4
execute if score @s action_time matches 25 if predicate anemoland:random_chance/0_5 at @s rotated ~180 0 rotated ~20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/1
execute if score @s action_time matches 25 if predicate anemoland:random_chance/0_5 at @s rotated ~180 0 rotated ~20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/3
execute if score @s action_time matches 25 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~180 0 rotated ~20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/4
execute if score @s action_time matches 30 if predicate anemoland:random_chance/0_5 at @s rotated ~180 0 rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/1
execute if score @s action_time matches 30 if predicate anemoland:random_chance/0_5 at @s rotated ~180 0 rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/3
execute if score @s action_time matches 30 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~180 0 rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/4
execute if score @s action_time matches 35 if predicate anemoland:random_chance/0_5 at @s rotated ~180 0 rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/1
execute if score @s action_time matches 35 if predicate anemoland:random_chance/0_5 at @s rotated ~180 0 rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/3
execute if score @s action_time matches 35 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~180 0 rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/4

execute if score @s action_time matches 65.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/shake_tail/1/start
execute if entity @s[tag=angry] if score @s action_time matches 55.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/shake_tail/1/start
