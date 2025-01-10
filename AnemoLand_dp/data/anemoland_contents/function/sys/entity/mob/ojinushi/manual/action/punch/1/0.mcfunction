
tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..10 if score @s action_way matches 1 run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches ..10 if score @s action_way matches 2 run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches ..10 if score @s action_way matches 3 run data modify storage temp:_ data.motion set value {speed:0.9}
    execute if score @s action_time matches ..10 if score @s action_way matches 4 run data modify storage temp:_ data.motion set value {speed:1.2}
    execute if score @s action_time matches ..10 if score @s action_way matches 0 run data modify storage temp:_ data.motion set value {speed:1.6}

    execute if score @s action_time matches 11..15 if score @s action_way matches 1 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 11..15 if score @s action_way matches 2 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 11..15 if score @s action_way matches 3 run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches 11..15 if score @s action_way matches 4 run data modify storage temp:_ data.motion set value {speed:0.8}
    execute if score @s action_time matches 11..15 if score @s action_way matches 0 run data modify storage temp:_ data.motion set value {speed:1.1}

    execute if score @s action_time matches 16..20 if score @s action_way matches 1 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 16..20 if score @s action_way matches 2 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 16..20 if score @s action_way matches 3 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 16..20 if score @s action_way matches 4 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 16..20 if score @s action_way matches 0 run data modify storage temp:_ data.motion set value {speed:0.6}

    execute if score @s action_time matches 21..30 if score @s action_way matches 1 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches 21..30 if score @s action_way matches 2 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches 21..30 if score @s action_way matches 3 run data modify storage temp:_ data.motion set value {speed:0.15}
    execute if score @s action_time matches 21..30 if score @s action_way matches 4 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 21..30 if score @s action_way matches 0 run data modify storage temp:_ data.motion set value {speed:0.3}

    execute if score @s action_time matches ..30 run execute rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 2 as @a[distance=..64] at @s run playsound minecraft:entity.wind_charge.wind_burst hostile @s ~ ~ ~ 4 0
execute if score @s action_time matches 16..18 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 4 0
execute if score @s action_time matches 18..20 run particle explosion ^ ^ ^3 0 0 0 1 1
execute if score @s action_time matches 20 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 2 1

execute if score @s action_time matches 5..12 run function anemoland_contents:sys/entity/mob/ojinushi/attack/tackle/0
execute if score @s action_time matches 13..20 run function anemoland_contents:sys/entity/mob/ojinushi/attack/right_punch/0

execute if score @s action_time matches 90.. run function anemoland_contents:sys/entity/mob/ojinushi/action/punch/end
execute if entity @s[tag=angry] if score @s action_time matches 80.. run function anemoland_contents:sys/entity/mob/ojinushi/action/punch/end
