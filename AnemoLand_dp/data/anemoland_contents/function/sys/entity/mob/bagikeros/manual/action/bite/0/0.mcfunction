
# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 21.. run data modify storage temp:_ data.motion set value {speed:0.05}
    execute if score @s action_time matches ..10 rotated ~180 5 run function anemoland:sys/entity/common/motion/0
    execute if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^8 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^8 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

# プレイヤーの方に回転
    execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/rotate/to_player/front/8
    execute if score @s action_time matches 21..30 run function anemoland:sys/entity/common/rotate/to_player/front/4
    execute if score @s action_time matches 31.. at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/bite/1/start
execute if entity @s[tag=angry] if score @s action_time matches 35.. run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/bite/1/start
