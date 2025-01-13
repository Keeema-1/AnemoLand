
# 回転
    execute if score @s action_time matches ..10 run function anemoland:sys/entity/common/rotate/to_player/back/8
    execute if score @s action_time matches 11..40 run function anemoland:sys/entity/common/rotate/to_player/back/6
    execute if score @s action_time matches 41.. at @s run tp @s ~ ~ ~ ~ ~

# パーティクルやサウンド
    execute if score @s action_time matches 60 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 1
    execute if score @s action_time matches 60 rotated ~ 0 positioned ^ ^ ^-6 run function anemoland_contents:sys/entity/mob/martellos/manual/action/knock/1/particle

execute if entity @s[tag=variant.mushroom] if score @s action_time matches 60 rotated ~ 0 positioned ^ ^ ^-5 run function anemoland_contents:sys/entity/mob/martellos/manual/action/knock/1/mushroom

# 攻撃
    execute if score @s action_time matches 52..60 run function anemoland_contents:sys/entity/mob/martellos/attack/tail/0

# 移動
    execute if score @s action_time matches ..10 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..10 if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^-7 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches ..10 unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^-7 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

    execute if score @s action_time matches 25..35 if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.7}
    execute if score @s action_time matches 25..35 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.7}
    execute if score @s action_time matches 36..45 if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 36..45 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 46..55 if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.15}
    execute if score @s action_time matches 46..55 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.15}
    execute if score @s action_time matches 25..55 rotated ~180 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 140.. run function anemoland_contents:sys/entity/mob/martellos/action/knock_tail/end
execute if entity @s[tag=angry] if score @s action_time matches 120.. run function anemoland_contents:sys/entity/mob/martellos/action/knock_tail/end
