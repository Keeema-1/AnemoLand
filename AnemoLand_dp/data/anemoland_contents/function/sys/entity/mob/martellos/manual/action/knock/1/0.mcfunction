
# 移動
    data modify storage temp:_ data.motion set value {speed:0.5}
    execute if score @s action_time matches ..5 if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches ..5 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches 6..10 if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 6..10 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 11..15 if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches 11..15 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..15 run function anemoland:sys/entity/common/motion/0

# プレイヤーの方に回転
    # execute if score @s action_time matches ..10 run function anemoland:sys/entity/common/rotate/to_player/front/3
    execute if score @s action_way matches 0 if score @s action_time matches ..15 run tp @s ~ ~ ~ ~0.5 ~
    execute if score @s action_way matches 1 if score @s action_time matches ..15 run tp @s ~ ~ ~ ~-0.5 ~

execute if score @s action_time matches 10 rotated ~ 0 positioned ^ ^ ^2 run function anemoland_contents:sys/entity/mob/martellos/manual/action/knock/1/particle
execute if score @s action_time matches 10 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 1

execute if score @s action_way matches 0 if score @s action_time matches 8..10 run function anemoland_contents:sys/entity/mob/martellos/attack/knock_left/0
execute if score @s action_way matches 1 if score @s action_time matches 8..10 run function anemoland_contents:sys/entity/mob/martellos/attack/knock_right/0

execute if score @s action_time matches 20.. run function anemoland_contents:sys/entity/mob/martellos/manual/action/knock/2/start
