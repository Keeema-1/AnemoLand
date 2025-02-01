# 中断
    execute if score @s action_time matches 3.. if entity @p[tag=player_check,tag=using_item] run return run function anemoland:sys/player/item/fishing/end_as_bobber

scoreboard players add @s action_time 1

# centerに近づいたら水平方向の移動をやめる
    execute at @s positioned ~ 0 ~ if entity @e[type=marker,tag=fishing_center,distance=..7,sort=nearest] at @s run return run function anemoland:sys/player/item/fishing/casting/near

# 水平方向の移動
    execute if block ~ ~ ~ water at @s facing entity @e[type=marker,tag=fishing_center,distance=..32,sort=nearest] feet rotated ~ 0 run return run tp ^ ^ ^0.8

# 垂直方向の移動
    execute if score @s action_time matches ..5 at @s facing entity @e[type=marker,tag=fishing_center,distance=..32,sort=nearest] feet rotated ~ -20 run return run tp ^ ^ ^0.8
    execute if score @s action_time matches ..10 at @s facing entity @e[type=marker,tag=fishing_center,distance=..32,sort=nearest] feet rotated ~ -10 run return run tp ^ ^ ^0.8
    execute if score @s action_time matches ..15 at @s facing entity @e[type=marker,tag=fishing_center,distance=..32,sort=nearest] feet rotated ~ 0 run return run tp ^ ^ ^0.8
    execute if score @s action_time matches ..20 at @s facing entity @e[type=marker,tag=fishing_center,distance=..32,sort=nearest] feet rotated ~ 10 run return run tp ^ ^ ^0.8
    execute at @s facing entity @e[type=marker,tag=fishing_center,distance=..32,sort=nearest] feet rotated ~ 20 run return run tp ^ ^ ^0.8

