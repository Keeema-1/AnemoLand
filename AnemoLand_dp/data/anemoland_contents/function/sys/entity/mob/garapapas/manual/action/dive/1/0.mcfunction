tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..25 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 26..50 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..50 rotated ~ 5 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 10..30 run function anemoland_contents:sys/entity/mob/garapapas/attack/dive/0

execute if score @s action_time matches 20..30 rotated ~ 0 run particle explosion ^ ^1 ^3 3 0.5 3 1 2
execute if score @s action_time matches 20..22 as @a[distance=..64] at @s run playsound minecraft:entity.generic.explode hostile @s ~ ~ ~ 0.7 0

execute if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/garapapas/action/dive/end
