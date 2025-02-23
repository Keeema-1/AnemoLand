tp @s ~ ~ ~ ~ ~

# 回転
    # execute if score @s action_time matches 16..25 if score @s action_way matches 0 at @s run tp @s ~ ~ ~ ~3 ~
    # execute if score @s action_time matches 16..25 if score @s action_way matches 1 at @s run tp @s ~ ~ ~ ~-3 ~

    # execute if score @s action_time matches 50..90 if score @s action_way matches 0 at @s run tp @s ~ ~ ~ ~1 ~
    # execute if score @s action_time matches 50..90 if score @s action_way matches 1 at @s run tp @s ~ ~ ~ ~-1 ~
    execute if score @s action_time matches ..8 run function anemoland:sys/entity/common/rotate/to_player/front/2

# 移動
    execute if score @s action_time matches 8..16 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 17..20 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches 8..20 run function anemoland:sys/entity/common/motion/0

# パーティクルやサウンド
    execute if score @s action_time matches 10..16 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0
    execute if score @s action_time matches 18..19 as @a[distance=..64] at @s run playsound block.grass.break hostile @s ~ ~ ~ 2 0.5
    execute if score @s action_time matches 20 rotated ~ 0 positioned ^ ^ ^2.5 run function anemoland_contents:sys/entity/mob/garuda/manual/action/pick/1/particle

# 攻撃
    execute if score @s action_time matches 20 run function anemoland_contents:sys/entity/mob/garuda/attack/pick/0

execute if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/garuda/action/pick/end
