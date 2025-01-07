
# 移動
    data modify storage temp:_ data.motion set value {speed:0.5}
    execute rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 3.. run function anemoland_contents:sys/entity/mob/king_boar/attack/dive/0

execute if score @s action_time matches 5.. run function anemoland_contents:sys/entity/mob/king_boar/manual/action/dive/2/start
