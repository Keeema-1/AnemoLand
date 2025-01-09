tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches 21..30 run data modify storage temp:_ data.motion set value {speed:0.05}
    execute if score @s action_time matches 31.. run data modify storage temp:_ data.motion set value {speed:0.0}
    execute at @s rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 40.. run return run function anemoland_contents:sys/entity/mob/spider/action/jump/end
