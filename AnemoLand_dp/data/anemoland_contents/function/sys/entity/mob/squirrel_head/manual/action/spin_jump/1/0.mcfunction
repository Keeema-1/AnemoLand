
# 回転
    execute if score @s action_time matches ..5 run tp @s ~ ~ ~ ~15 ~
    execute if score @s action_time matches 6..10 run tp @s ~ ~ ~ ~10 ~
    execute if score @s action_time matches 11..15 run tp @s ~ ~ ~ ~8 ~

    execute if score @s action_time matches 16.. run tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_way2 matches 1 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_way2 matches 2 run data modify storage temp:_ data.motion set value {speed:0.5}
    execute if score @s action_way2 matches 3 run data modify storage temp:_ data.motion set value {speed:0.9}
    execute if score @s action_way2 matches 4 run data modify storage temp:_ data.motion set value {speed:1.3}
    execute if score @s action_way2 matches 5 run data modify storage temp:_ data.motion set value {speed:1.7}
    execute if score @s action_way2 matches 6 run data modify storage temp:_ data.motion set value {speed:2.0}
    execute if score @s action_time matches 11..14 facing ^ ^0.4 ^-1 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 15..18 facing ^ ^ ^-1 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 19..30 facing ^ ^-0.4 ^-1 run function anemoland:sys/entity/common/motion/0

# 攻撃
    execute if score @s action_time matches 11..30 run function anemoland_contents:sys/entity/mob/squirrel_head/attack/spin_jump1/0

execute if score @s action_time matches 25.. run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/spin_jump/2/start
