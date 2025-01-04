
# 移動
    data modify storage temp:_ data.motion set value {speed:0.05}
    execute if score @s action_way matches 0 rotated ~90 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_way matches 1 rotated ~-90 0 run function anemoland:sys/entity/common/motion/0

# 回転
    function anemoland:sys/entity/common/target_direction/is_frontside

    # execute if score @s action_time matches ..10 at @s run tp @s ~ ~ ~ ~ ~
    execute if score @s action_way matches 0 if score @s action_time matches ..20 if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~4 ~
    execute if score @s action_way matches 0 if score @s action_time matches ..20 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-4 ~
    execute if score @s action_way matches 0 if score @s action_time matches 21..40 if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~2 ~
    execute if score @s action_way matches 0 if score @s action_time matches 21..40 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-2 ~
    execute if score @s action_way matches 1 if score @s action_time matches ..20 if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-4 ~
    execute if score @s action_way matches 1 if score @s action_time matches ..20 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~4 ~
    execute if score @s action_way matches 1 if score @s action_time matches 21..40 if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-2 ~
    execute if score @s action_way matches 1 if score @s action_time matches 21..40 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~2 ~
    execute if score @s action_time matches 41.. at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 60.. run return run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/tackle_side/1/start
execute if entity @s[tag=angry] if score @s action_time matches 50.. run return run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/tackle_side/1/start
