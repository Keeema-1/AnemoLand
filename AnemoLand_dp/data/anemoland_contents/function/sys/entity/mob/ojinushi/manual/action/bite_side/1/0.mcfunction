
# 回転
    execute if score @s action_way matches 0 if score @s action_time matches ..10 at @s run tp @s ~ ~ ~ ~6 ~
    execute if score @s action_way matches 1 if score @s action_time matches ..10 at @s run tp @s ~ ~ ~ ~-6 ~

    execute if score @s action_way matches 0 if score @s action_time matches 11..20 at @s run tp @s ~ ~ ~ ~3 ~
    execute if score @s action_way matches 1 if score @s action_time matches 11..20 at @s run tp @s ~ ~ ~ ~-3 ~

    execute if score @s action_time matches 21.. run tp @s ~ ~ ~ ~ ~

# パーティクルやサウンド
    execute if score @s action_way matches 1 if score @s action_time matches 5..10 run particle sweep_attack ^2 ^2 ^2
    execute if score @s action_way matches 0 if score @s action_time matches 5..10 run particle sweep_attack ^-2 ^2 ^2
    execute if score @s action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.fox.bite hostile @s ~ ~ ~ 0.7 0
    execute if score @s action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 0.7 0

# 攻撃
    execute if score @s action_time matches ..15 run function anemoland_contents:sys/entity/mob/ojinushi/attack/bite/0

# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.8}
    execute if score @s action_way matches 1 if score @s action_time matches ..10 rotated ~-90 0 positioned ^ ^ ^3 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_way matches 0 if score @s action_time matches ..10 rotated ~90 0 positioned ^ ^ ^3 run function anemoland:sys/entity/common/motion/0

# 終了
    execute if score @s action_time matches 90.. run function anemoland_contents:sys/entity/mob/ojinushi/action/bite_side/end
