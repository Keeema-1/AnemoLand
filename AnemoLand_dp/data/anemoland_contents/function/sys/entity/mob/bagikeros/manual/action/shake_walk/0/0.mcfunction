
# 回転
    function anemoland:sys/entity/common/target_direction/is_leftside
    function anemoland:sys/entity/common/target_direction/is_frontside

    execute if score @s action_time matches ..10 if score #target_is_frontside temp matches 1 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-8 ~
    execute if score @s action_time matches ..10 if score #target_is_frontside temp matches 1 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~8 ~
    execute if score @s action_time matches 11..20 if score #target_is_frontside temp matches 1 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-4 ~
    execute if score @s action_time matches 11..20 if score #target_is_frontside temp matches 1 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~4 ~
    execute if score @s action_time matches 21..40 if score #target_is_frontside temp matches 1 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-1 ~
    execute if score @s action_time matches 21..40 if score #target_is_frontside temp matches 1 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~1 ~
    execute if score @s action_time matches 41.. at @s run tp @s ~ ~ ~ ~ ~

    execute if score @s action_time matches ..40 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-6 ~

execute if score @s action_time matches 40 run function anemoland_contents:sys/entity/mob/bagikeros/animation/shake_walk

execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/bagikeros/attack/bite1/0

# 移動
    execute if score @s action_time matches ..40 run data modify storage temp:_ data.motion set value {speed:0.05}
    execute if score @s action_time matches 41.. run data modify storage temp:_ data.motion set value {speed:0.4}
    execute rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 41..139 unless score #target_is_frontside temp matches 1 run scoreboard players set @s action_time 140

execute if score @s action_time matches 200.. run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/shake_walk/1/start
execute if entity @s[tag=angry] if score @s action_time matches 200.. run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/shake_walk/1/start
