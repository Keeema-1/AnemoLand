
# 移動
    execute if score @s action_time matches ..20 run data modify storage temp:_ data.motion set value {speed:0.15}
    execute if entity @s[tag=angry] if score @s action_time matches ..20 run data modify storage temp:_ data.motion set value {speed:0.25}
    execute if score @s action_time matches 21.. run data modify storage temp:_ data.motion set value {speed:0.05}
    execute if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^7 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^7 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

# プレイヤーの方に回転
    execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/rotate/to_player/front/3
    execute if score @s action_time matches 21.. run function anemoland:sys/entity/common/rotate/to_player/front/1

execute if score @s action_time matches 45.. run function anemoland_contents:sys/entity/mob/martellos/manual/action/knock/1/start
execute if entity @s[tag=angry] if score @s action_time matches 35.. run function anemoland_contents:sys/entity/mob/martellos/manual/action/knock/1/start
