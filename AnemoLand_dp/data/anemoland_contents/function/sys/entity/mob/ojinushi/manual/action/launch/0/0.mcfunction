
# 回転
    execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/rotate/to_player/front/4
    execute if score @s action_time matches 21..30 run function anemoland:sys/entity/common/rotate/to_player/front/4
    execute if score @s action_time matches 31.. at @s run tp @s ~ ~ ~ ~ ~

# 移動
    data modify storage temp:_ data.motion set value {speed:0.05}
    execute if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^7 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^7 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/launch/1/start
execute if entity @s[tag=angry] if score @s action_time matches 35.. run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/launch/1/start
