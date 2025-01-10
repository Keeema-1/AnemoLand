
# execute if score @s action_time matches ..10 run data modify storage temp:_ data.rot2vec set value {abs:0.3}
# execute if score @s action_time matches 11..20 run data modify storage temp:_ data.rot2vec set value {abs:0.2}
# execute if score @s action_time matches 21.. run data modify storage temp:_ data.rot2vec set value {abs:0.1}
# execute if score @s action_time matches ..10 rotated ~ 180 run function anemoland:sys/entity/common/rot2vec/0
# execute if score @s action_time matches 11.. if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^8 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
# execute if score @s action_time matches 11.. unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^8 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
# execute if score @s action_time matches ..40 run data modify entity @s Motion set from storage temp:_ data.vec

execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

# execute if score @s action_time matches ..10 at @s run tp @s ~ ~ ~ ~ ~
execute if score @s action_time matches ..10 at @s run tp @s ~ ~ ~ ~-4 ~
execute if score @s action_time matches 11..20 at @s run tp @s ~ ~ ~ ~ ~
execute if score @s action_time matches 21..30 at @s run tp @s ~ ~ ~ ~4 ~
execute if score @s action_time matches 31..40 at @s run tp @s ~ ~ ~ ~-4 ~
# execute if score @s action_time matches ..20 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-4 ~
# execute if score @s action_time matches ..20 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~4 ~
# execute if score @s action_time matches 21..30 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-2 ~
# execute if score @s action_time matches 21..30 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~2 ~
execute if score @s action_time matches 41.. at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 10..15 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 1 0
execute if score @s action_time matches 30..35 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 1 0

execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s rotated ~-60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/1
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s rotated ~-60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/3
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~-60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/4
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s rotated ~-100 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/1
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s rotated ~-100 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/3
execute if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~-100 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/4
execute if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 at @s rotated ~-20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/1
execute if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 at @s rotated ~-20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/3
execute if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~-20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/4
execute if score @s action_time matches 25 if predicate anemoland:random_chance/0_5 at @s rotated ~20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/1
execute if score @s action_time matches 25 if predicate anemoland:random_chance/0_5 at @s rotated ~20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/3
execute if score @s action_time matches 25 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/4
execute if score @s action_time matches 30 if predicate anemoland:random_chance/0_5 at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/1
execute if score @s action_time matches 30 if predicate anemoland:random_chance/0_5 at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/3
execute if score @s action_time matches 30 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/4
execute if score @s action_time matches 35 if predicate anemoland:random_chance/0_5 at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/1
execute if score @s action_time matches 35 if predicate anemoland:random_chance/0_5 at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/3
execute if score @s action_time matches 35 if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/common/dust/4

execute if score @s action_time matches 50.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/shake_head/1/start
execute if entity @s[tag=angry] if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/shake_head/1/start
