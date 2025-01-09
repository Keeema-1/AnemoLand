rotate @s ~ ~

# 移動
    data modify storage temp:_ data.motion set value {speed:0.05}
    execute at @s rotated ~180 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 30.. run function anemoland_contents:sys/entity/mob/spider/manual/action/jump/1/start
