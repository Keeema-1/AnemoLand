# 回転
    execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
    execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

    execute if score @s action_time matches ..20 if score #target_is_leftside temp matches 1 run tp @s ~ ~ ~ ~-4 ~
    execute if score @s action_time matches ..20 unless score #target_is_leftside temp matches 1 run tp @s ~ ~ ~ ~4 ~

    execute if score @s action_time matches 21..40 if score #target_is_leftside temp matches 1 run tp @s ~ ~ ~ ~-2 ~
    execute if score @s action_time matches 21..40 unless score #target_is_leftside temp matches 1 run tp @s ~ ~ ~ ~2 ~

    execute if score @s action_time matches 41..65 if score #target_is_leftside temp matches 1 run tp @s ~ ~ ~ ~-1 ~
    execute if score @s action_time matches 41..65 unless score #target_is_leftside temp matches 1 run tp @s ~ ~ ~ ~1 ~

execute if score @s action_time matches 8 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0.5
execute if score @s action_time matches 16 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0.5
execute if score @s action_time matches 24 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0.5
execute if score @s action_time matches 32 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0.5

execute if entity @s[tag=!angry] if score @s action_time matches 60 run function anemoland_contents:sys/entity/mob/squirrel_head/animation/spin_jump_left2

execute if entity @s[tag=angry] if score @s action_time matches 50 run function anemoland_contents:sys/entity/mob/squirrel_head/animation/spin_jump_left2

execute if entity @s[tag=angry] if score @s action_time matches 55.. run return run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/spin_jump/1/start

execute if score @s action_time matches 65.. run return run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/spin_jump/1/start
