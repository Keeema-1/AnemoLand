
# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 21.. run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..10 rotated ~ 180 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 11..40 if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^24 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 11..40 unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^24 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

# 回転
    execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/rotate/to_player/front/2
    execute if score @s action_time matches 21.. run function anemoland:sys/entity/common/rotate/to_player/front/1

execute if score @s action_time matches 21.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/beam/0/particle

execute if score @s action_time matches 50.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/beam_high/1/start
execute if entity @s[tag=angry] if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/beam_high/1/start
