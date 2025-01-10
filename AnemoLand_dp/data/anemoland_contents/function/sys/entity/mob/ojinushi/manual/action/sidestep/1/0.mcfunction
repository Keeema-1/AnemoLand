
# 回転
    execute if score @s action_time matches ..20 if score @s action_way matches 0 run tp @s ~ ~ ~ ~4 ~
    execute if score @s action_time matches ..20 if score @s action_way matches 1 run tp @s ~ ~ ~ ~-4 ~

    execute if score @s action_time matches 21.. run function anemoland:sys/entity/common/rotate/to_player/front/2

# 移動
    data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches ..30 if score @s action_way matches 0 facing ^1 ^ ^-1 rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches ..30 if score @s action_way matches 1 facing ^-1 ^ ^-1 rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/ojinushi/action/sidestep/end
