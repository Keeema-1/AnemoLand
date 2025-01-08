# 回転
    execute if score @s action_way matches 0 if score @s action_time matches ..10 run tp @s ~ ~ ~ ~2 ~
    execute if score @s action_way matches 1 if score @s action_time matches ..10 run tp @s ~ ~ ~ ~-2 ~
    execute if score @s action_way matches 0 if score @s action_time matches 11..20 run tp @s ~ ~ ~ ~2 ~
    execute if score @s action_way matches 1 if score @s action_time matches 11..20 run tp @s ~ ~ ~ ~-2 ~
    execute if score @s action_way matches 0 if score @s action_time matches 21..30 run tp @s ~ ~ ~ ~8 ~
    execute if score @s action_way matches 1 if score @s action_time matches 21..30 run tp @s ~ ~ ~ ~-8 ~
    execute if score @s action_time matches 31..50 run tp @s ~ ~ ~ ~ ~
    execute if score @s action_way matches 0 if score @s action_time matches 61..80 run tp @s ~ ~ ~ ~-2 ~
    execute if score @s action_way matches 1 if score @s action_time matches 61..80 run tp @s ~ ~ ~ ~2 ~
    execute if score @s action_time matches 81.. run tp @s ~ ~ ~ ~ ~


# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 21..30 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_way matches 0 rotated ~-30 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_way matches 1 rotated ~30 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 20..30 run function anemoland_contents:sys/entity/mob/garapapas/attack/tail/0
# execute if score @s action_time matches 5..10 run particle sweep_attack ^ ^2 ^7
execute if score @s action_time matches 20..30 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0
# execute if score @s action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 0.7 0

execute if score @s action_time matches 20..30 run scoreboard players operation #entity_id temp = @s entity_id
execute if score @s action_time matches 20..30 as @e[type=#anemoland:mob_core,tag=hitbox.tail,tag=garapapas,distance=..32] if score @s entity_id = #entity_id temp at @s rotated ~ 0 run particle poof ^ ^ ^-3 0.1 0.1 0.1 0 1

execute if score @s action_time matches 90.. run function anemoland_contents:sys/entity/mob/garapapas/manual/action/tail_side/end
