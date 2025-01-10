
# 回転
    execute if score @s action_time matches ..10 at @s run tp @s ~ ~ ~ ~-4 ~
    execute if score @s action_time matches 11..20 at @s run tp @s ~ ~ ~ ~ ~
    execute if score @s action_time matches 21..30 at @s run tp @s ~ ~ ~ ~4 ~
    execute if score @s action_time matches 31..40 at @s run tp @s ~ ~ ~ ~-4 ~
    execute if score @s action_time matches 41.. at @s run tp @s ~ ~ ~ ~ ~

# パーティクルやサウンド
    execute if score @s action_time matches 10..15 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 1 0
    execute if score @s action_time matches 30..35 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 1 0

execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s rotated ~-60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/1
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s rotated ~-60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/3
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~-60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/4
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s rotated ~-100 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/1
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s rotated ~-100 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/3
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~-100 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/4
execute if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 at @s rotated ~-20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/1
execute if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 at @s rotated ~-20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/3
execute if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~-20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/4
execute if score @s action_time matches 25 if predicate anemoland:random_chance/0_5 at @s rotated ~20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/1
execute if score @s action_time matches 25 if predicate anemoland:random_chance/0_5 at @s rotated ~20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/3
execute if score @s action_time matches 25 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/4
execute if score @s action_time matches 30 if predicate anemoland:random_chance/0_5 at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/1
execute if score @s action_time matches 30 if predicate anemoland:random_chance/0_5 at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/3
execute if score @s action_time matches 30 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/4
execute if score @s action_time matches 35 if predicate anemoland:random_chance/0_5 at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/1
execute if score @s action_time matches 35 if predicate anemoland:random_chance/0_5 at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/3
execute if score @s action_time matches 35 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/4

execute if score @s action_time matches 50.. run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/shake_head/1/start
execute if entity @s[tag=angry] if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/shake_head/1/start
