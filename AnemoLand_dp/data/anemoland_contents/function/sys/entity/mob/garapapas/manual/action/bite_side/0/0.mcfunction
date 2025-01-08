
# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 11.. run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_way matches 0 if score #hostile_target.is_player temp matches 1 rotated ~-90 0 positioned ^ ^ ^8 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_way matches 0 if score #hostile_target.is_player temp matches 0 rotated ~-90 0 positioned ^ ^ ^8 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_way matches 1 if score #hostile_target.is_player temp matches 1 rotated ~90 0 positioned ^ ^ ^8 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_way matches 1 if score #hostile_target.is_player temp matches 0 rotated ~90 0 positioned ^ ^ ^8 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

# プレイヤーの方に回転
    execute if score @s action_way matches 0 if score @s action_time matches ..10 run function anemoland:sys/entity/common/rotate/to_player/left/6
    execute if score @s action_way matches 0 if score @s action_time matches 11.. run function anemoland:sys/entity/common/rotate/to_player/left/3
    execute if score @s action_way matches 1 if score @s action_time matches ..10 run function anemoland:sys/entity/common/rotate/to_player/right/6
    execute if score @s action_way matches 1 if score @s action_time matches 11.. run function anemoland:sys/entity/common/rotate/to_player/right/3

execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/garapapas/manual/action/bite_side/1/start
execute if entity @s[tag=angry] if score @s action_time matches 35.. run function anemoland_contents:sys/entity/mob/garapapas/manual/action/bite_side/1/start
