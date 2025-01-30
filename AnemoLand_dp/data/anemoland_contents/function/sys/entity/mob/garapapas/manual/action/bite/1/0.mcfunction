tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 21..25 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 26..30 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..30 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 5..10 run function anemoland_contents:sys/entity/mob/garapapas/attack/bite/0
execute if score @s action_time matches 5..10 run particle sweep_attack ^ ^2 ^7
execute if score @s action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.fox.bite hostile @s ~ ~ ~ 0.7 0
execute if score @s action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 0.7 0

execute if score @s action_time matches 80.. run function anemoland_contents:sys/entity/mob/garapapas/manual/action/bite/end
