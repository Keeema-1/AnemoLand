
# 回転
    execute if score @s action_time matches ..10 run function anemoland:sys/entity/common/rotate/to_player/front/4
    execute if score @s action_time matches 11.. at @s run tp @s ~ ~ ~ ~ ~

# 移動
    data modify storage temp:_ data.vec set value [0.0d,0.0d,0.0d]

    execute if score @s action_time matches 2..30 if score @s action_way matches 1 run data modify storage temp:_ data.rot2vec set value {abs:0.0}
    execute if score @s action_time matches 2..30 if score @s action_way matches 2 run data modify storage temp:_ data.rot2vec set value {abs:0.25}
    execute if score @s action_time matches 2..30 if score @s action_way matches 3 run data modify storage temp:_ data.rot2vec set value {abs:0.35}
    execute if score @s action_time matches 2..30 if score @s action_way matches 4 run data modify storage temp:_ data.rot2vec set value {abs:0.45}
    execute if score @s action_time matches 2..30 if score @s action_way matches 0 run data modify storage temp:_ data.rot2vec set value {abs:0.55}

    execute if score @s action_time matches 2..30 run execute rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0

    execute if score @s action_time matches 2..5 run data modify storage temp:_ data.vec[1] set value 0.8
    execute if score @s action_time matches 6..10 run data modify storage temp:_ data.vec[1] set value 0.4
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.vec[1] set value 0.1

    execute if score @s action_time matches 21..25 run data modify storage temp:_ data.vec[1] set value -0.1d
    execute if entity @s[tag=angry] if score @s action_time matches 21..25 run data modify storage temp:_ data.vec[1] set value -0.4d
    execute if score @s action_time matches 26..40 run data modify storage temp:_ data.vec[1] set value -0.8d

    data modify entity @s Motion set from storage temp:_ data.vec

# パーティクルやサウンド
    execute if score @s action_time matches 2 as @a[distance=..64] at @s run playsound minecraft:entity.wind_charge.wind_burst hostile @s ~ ~ ~ 4 0
    execute if score @s action_time matches 35 run particle explosion ^ ^0.3 ^2 2.5 0.3 2.5 1 20
    execute if score @s action_time matches 35..37 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 2 1

execute if score @s action_time matches 35..37 run function anemoland_contents:sys/entity/mob/muscleroom/attack/jump/0

execute if score @s action_time matches 120.. run function anemoland_contents:sys/entity/mob/muscleroom/action/jump/end