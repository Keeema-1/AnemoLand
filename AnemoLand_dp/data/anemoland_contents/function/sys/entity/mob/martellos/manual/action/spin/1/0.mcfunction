
# 回転
    execute if score @s action_time matches ..5 if score @s action_way matches 0 run tp @s ~ ~ ~ ~-20 ~
    execute if score @s action_time matches ..5 if score @s action_way matches 1 run tp @s ~ ~ ~ ~20 ~

    execute if score @s action_time matches 6..10 if score @s action_way matches 0 run tp @s ~ ~ ~ ~-15 ~
    execute if score @s action_time matches 6..10 if score @s action_way matches 1 run tp @s ~ ~ ~ ~15 ~

    execute if score @s action_time matches 11..20 if score @s action_way matches 0 run tp @s ~ ~ ~ ~-5 ~
    execute if score @s action_time matches 11..20 if score @s action_way matches 1 run tp @s ~ ~ ~ ~5 ~

    execute if score @s action_time matches 21..25 if score @s action_way matches 0 run tp @s ~ ~ ~ ~-3 ~
    execute if score @s action_time matches 21..25 if score @s action_way matches 1 run tp @s ~ ~ ~ ~3 ~

    execute if score @s action_time matches 26..35 if score @s action_way matches 0 run tp @s ~ ~ ~ ~-1 ~
    execute if score @s action_time matches 26..35 if score @s action_way matches 1 run tp @s ~ ~ ~ ~1 ~

    execute if score @s action_time matches 36.. if score @s action_way matches 0 run tp @s ~ ~ ~ ~ ~
    execute if score @s action_time matches 36.. if score @s action_way matches 1 run tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..10 if entity @s[tag=!angry] run data modify storage temp:_ data.motion set value {speed:0.15}
    execute if score @s action_time matches ..10 if entity @s[tag=angry] run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches ..10 if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches ..10 unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 11..20 if entity @s[tag=!angry] run data modify storage temp:_ data.motion set value {speed:0.05}
    execute if score @s action_time matches 11..20 if entity @s[tag=angry] run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches 11..20 if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 11..20 unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches ..20 run function anemoland_contents:sys/entity/mob/martellos/attack/tail/0

# パーティクルやサウンド
    execute if score @s action_time matches ..15 run particle poof ^-6 ^1 ^-1 0.0 0.0 0.0 0 1
    execute if score @s action_time matches ..20 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.8 0

execute if score @s action_time matches 60.. run function anemoland_contents:sys/entity/mob/martellos/manual/action/spin/2/start
