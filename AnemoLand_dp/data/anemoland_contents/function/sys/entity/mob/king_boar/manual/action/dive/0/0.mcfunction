
# 回転
    function anemoland:sys/entity/common/target_direction/is_leftside
    execute if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-10 ~
    execute unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~10 ~

# 移動
    execute if score @s action_time matches ..30 run data modify storage temp:_ data.motion set value {speed:0.05}
    execute if score @s action_time matches ..30 if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^3 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches ..30 unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^3 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 45.. run function anemoland_contents:sys/entity/mob/king_boar/manual/action/dive/1/start
