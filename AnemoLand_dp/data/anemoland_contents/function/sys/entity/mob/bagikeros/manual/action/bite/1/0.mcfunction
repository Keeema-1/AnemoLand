tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 21..25 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 26..30 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..30 rotated ~ 5 run function anemoland:sys/entity/common/motion/0

# 攻撃
    execute if score @s action_time matches 5..10 run function anemoland_contents:sys/entity/mob/bagikeros/attack/bite1/0

# パーティクルやサウンド
    execute if score @s action_time matches 5..10 run particle sweep_attack ^ ^2 ^7
    execute if score @s action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.fox.bite hostile @s ~ ~ ~ 0.7 0
    execute if score @s action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 0.7 0

execute if entity @s[tag=angry] if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s positioned ^ ^ ^4 rotated ~60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/2
execute if entity @s[tag=angry] if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s positioned ^ ^ ^4 rotated ~120 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/2
execute if entity @s[tag=angry] if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s positioned ^ ^ ^4 rotated ~-60 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/2
execute if entity @s[tag=angry] if score @s action_time matches 10 if predicate anemoland:random_chance/0_5 at @s positioned ^ ^ ^4 rotated ~-120 ~ positioned ^ ^1 ^4 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/common/dust/2

execute if score @s action_time matches 60.. run function anemoland_contents:sys/entity/mob/bagikeros/action/bite/end
