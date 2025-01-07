tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.6}
    execute if score @s action_time matches 11..15 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 16..20 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 21..26 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score #hostile_target.is_player temp matches 1 rotated ~ 5 run function anemoland:sys/entity/common/motion/0
    execute unless score #hostile_target.is_player temp matches 1 rotated ~ 5 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 5..10 run function anemoland_contents:sys/entity/mob/squirrel_head/attack/bite/0
execute if score @s action_time matches 5..10 run particle sweep_attack ^ ^1 ^5
# execute if score @s action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.fox.bite hostile @s ~ ~ ~ 0.7 0
# execute if score @s action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.fox.bite hostile @s ~ ~ ~ 1 0
execute if score @s action_time matches ..5 as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 2 0

execute if score @s action_time matches 60.. run function anemoland_contents:sys/entity/mob/squirrel_head/action/bite/end
