tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.8}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches 21..30 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 31..50 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..50 if score @s action_way matches 0 rotated ~-90 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches ..50 if score @s action_way matches 1 rotated ~90 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches ..20 run function anemoland_contents:sys/entity/mob/squirrel_head/attack/tackle/0

execute if score @s action_time matches 80.. run function anemoland_contents:sys/entity/mob/squirrel_head/action/tackle_side/end
