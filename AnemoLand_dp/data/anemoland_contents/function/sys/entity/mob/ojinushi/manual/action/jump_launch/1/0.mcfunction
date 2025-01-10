
tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 20 run particle flame ^ ^3 ^3 0 0 0 0.1 20
execute if score @s action_time matches 20 as @a[distance=..64] at @s run playsound entity.ghast.shoot hostile @s ~ ~ ~ 2 1

execute if score @s action_time matches 18 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/jump_launch/launch1
execute if score @s action_time matches 21 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/jump_launch/launch2
execute if score @s action_time matches 24 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/jump_launch/launch3

# 移動
    execute if score @s action_time matches ..5 run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches 6..10 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 11..15 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 16..20 run data modify storage temp:_ data.motion set value {speed:0.1}

    execute if score @s action_time matches 21..40 run data modify storage temp:_ data.motion set value {speed:0.1}

    # execute if score @s action_time matches 30..40 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 41..50 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 51..70 run data modify storage temp:_ data.motion set value {speed:0.6}

    execute if score @s action_time matches ..20 run execute rotated ~180 -70 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 21..30 run execute rotated ~180 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 31..40 run execute rotated ~180 40 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 41..70 run execute rotated ~180 70 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 120.. run function anemoland_contents:sys/entity/mob/ojinushi/action/jump_launch/end

execute if entity @s[tag=angry] if score @s action_time matches 110.. run function anemoland_contents:sys/entity/mob/ojinushi/action/jump_launch/end
