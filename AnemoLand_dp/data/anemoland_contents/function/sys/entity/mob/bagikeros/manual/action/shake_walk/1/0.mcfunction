tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..20 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 21..40 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches 41.. run data modify storage temp:_ data.motion set value {speed:0.0}
    execute rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 60.. run function anemoland_contents:sys/entity/mob/bagikeros/action/shake_walk/end
execute if entity @s[tag=angry] if score @s action_time matches 60.. run function anemoland_contents:sys/entity/mob/bagikeros/action/shake_walk/end
