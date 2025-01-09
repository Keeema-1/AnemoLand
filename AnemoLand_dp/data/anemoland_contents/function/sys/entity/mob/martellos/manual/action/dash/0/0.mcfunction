
# 回転
    execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/rotate/to_player/front/2
    execute if score @s action_time matches 21..40 run function anemoland:sys/entity/common/rotate/to_player/front/1

# 移動
    data modify storage temp:_ data.motion set value {speed:0.15}
    execute if score @s action_time matches ..40 facing ^ ^ ^-1 rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if entity @s[tag=angry] if score @s action_time matches 30.. run function anemoland_contents:sys/entity/mob/martellos/manual/action/dash/1/start
execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/martellos/manual/action/dash/1/start
