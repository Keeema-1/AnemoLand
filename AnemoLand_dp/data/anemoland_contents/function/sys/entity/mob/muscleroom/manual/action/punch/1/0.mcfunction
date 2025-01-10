
tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..10 if score @s action_way matches 1 run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches ..10 if score @s action_way matches 2 run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches ..10 if score @s action_way matches 3 run data modify storage temp:_ data.motion set value {speed:0.9}
    execute if score @s action_time matches ..10 if score @s action_way matches 4 run data modify storage temp:_ data.motion set value {speed:1.2}
    execute if score @s action_time matches ..10 if score @s action_way matches 0 run data modify storage temp:_ data.motion set value {speed:1.5}

    execute if score @s action_time matches 11..20 if score @s action_way matches 1 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 11..20 if score @s action_way matches 2 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 11..20 if score @s action_way matches 3 run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches 11..20 if score @s action_way matches 4 run data modify storage temp:_ data.motion set value {speed:0.8}
    execute if score @s action_time matches 11..20 if score @s action_way matches 0 run data modify storage temp:_ data.motion set value {speed:1.0}

    execute if score @s action_time matches 21..30 if score @s action_way matches 1 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 21..30 if score @s action_way matches 2 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 21..30 if score @s action_way matches 3 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 21..30 if score @s action_way matches 4 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 21..30 if score @s action_way matches 0 run data modify storage temp:_ data.motion set value {speed:0.5}

    execute if score @s action_time matches ..30 rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 2 as @a[distance=..64] at @s run playsound minecraft:entity.wind_charge.wind_burst hostile @s ~ ~ ~ 4 0
execute if score @s action_time matches 13..15 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 4 0

execute if score @s action_time matches 5..25 run function anemoland_contents:sys/entity/mob/muscleroom/attack/punch/0

execute if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/muscleroom/action/punch/end
execute if entity @s[tag=angry] if score @s action_time matches 80.. run function anemoland_contents:sys/entity/mob/muscleroom/action/punch/end
