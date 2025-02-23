tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..20 run data modify storage temp:_ data.motion set value {speed:-0.3}
    execute if score @s action_time matches 21..30 run data modify storage temp:_ data.motion set value {speed:-0.1}
    execute if score @s action_time matches ..30 rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    # execute if score @s action_time matches ..20 unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^6 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

# 回転
    execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/rotate/to_player/front/6
    execute if score @s action_time matches 21..30 run function anemoland:sys/entity/common/rotate/to_player/front/3
    # execute if score @s action_time matches 11.. run function anemoland:sys/entity/common/rotate/to_player/front/4

execute if score @s action_time matches 40.. run return run function anemoland_contents:sys/entity/mob/garuda/manual/action/dash/1/start
execute if entity @s[tag=angry] if score @s action_time matches 30.. run return run function anemoland_contents:sys/entity/mob/garuda/manual/action/dash/1/start
