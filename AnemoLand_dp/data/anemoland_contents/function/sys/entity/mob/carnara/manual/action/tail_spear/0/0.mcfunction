
# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 21.. run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..10 rotated ~ 180 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 11..40 if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^16 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 11..40 unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^16 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

# 回転
    function anemoland:sys/entity/common/target_direction/is_leftside

    execute if score @s action_time matches ..60 if score @s action_way matches 0 at @s run tp @s ~ ~ ~ ~-2 ~
    execute if score @s action_time matches ..60 if score @s action_way matches 1 at @s run tp @s ~ ~ ~ ~2 ~

    execute if score @s action_time matches ..20 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-4 ~
    execute if score @s action_time matches ..20 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~4 ~
    execute if score @s action_time matches 21..40 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-3 ~
    execute if score @s action_time matches 21..40 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~3 ~
    execute if score @s action_time matches 41.. if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-2 ~
    execute if score @s action_time matches 41.. unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~2 ~

execute if score @s action_time matches 60.. run return run function anemoland_contents:sys/entity/mob/carnara/manual/action/tail_spear/1/start
execute if entity @s[tag=angry] if score @s action_time matches 50.. run return run function anemoland_contents:sys/entity/mob/carnara/manual/action/tail_spear/1/start
