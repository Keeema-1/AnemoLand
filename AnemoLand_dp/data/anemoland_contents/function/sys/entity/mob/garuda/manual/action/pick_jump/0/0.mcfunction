
# 移動
    execute if score @s action_time matches ..20 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..20 if score @s action_way matches ..4 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..20 if score @s action_way matches 5..8 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches ..20 if score @s action_way matches 9..12 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches ..20 if score @s action_way matches 13..16 run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches ..20 if score @s action_way matches 17..20 run data modify storage temp:_ data.motion set value {speed:0.8}
    execute if score @s action_time matches ..20 if score @s action_way matches 21.. run data modify storage temp:_ data.motion set value {speed:1.0}
    execute if score @s action_time matches ..20 rotated ~ 0 run function anemoland:sys/entity/common/motion/0

# 回転
    execute if score @s action_time matches ..5 run function anemoland:sys/entity/common/rotate/to_player/front/10
    execute if score @s action_time matches 6..10 run function anemoland:sys/entity/common/rotate/to_player/front/6
    execute if score @s action_time matches 11.. run function anemoland:sys/entity/common/rotate/to_player/front/4

execute if score @s action_time matches 25.. run return run function anemoland_contents:sys/entity/mob/garuda/manual/action/pick/1/start
execute if entity @s[tag=angry] if score @s action_time matches 25.. run return run function anemoland_contents:sys/entity/mob/garuda/manual/action/pick/1/start
