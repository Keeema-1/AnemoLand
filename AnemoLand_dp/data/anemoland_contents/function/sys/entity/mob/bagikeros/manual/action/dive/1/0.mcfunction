tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 21..25 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 26..50 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute rotated ~ 0 run function anemoland:sys/entity/common/motion/0

# 攻撃
    execute if score @s action_time matches 10..30 run function anemoland_contents:sys/entity/mob/bagikeros/attack/dive1/0

# パーティクルやサウンド
    execute if score @s action_time matches 20..30 rotated ~ 0 run particle explosion ^ ^1 ^3 3 0.5 3 1 2
    execute if score @s action_time matches 20..22 as @a[distance=..64] at @s run playsound minecraft:entity.generic.explode hostile @s ~ ~ ~ 0.7 0

execute if entity @s[tag=angry] if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 at @s rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/2
execute if entity @s[tag=angry] if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 at @s rotated ~100 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/2
execute if entity @s[tag=angry] if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 at @s rotated ~-60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/2
execute if entity @s[tag=angry] if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 at @s rotated ~-100 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/2
execute if entity @s[tag=angry] if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 at @s rotated ~20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/2
execute if entity @s[tag=angry] if score @s action_time matches 20 if predicate anemoland:random_chance/0_5 at @s rotated ~-20 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/2

execute if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/bagikeros/action/dive/end
