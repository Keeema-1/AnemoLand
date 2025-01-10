tp @s ~ ~ ~ ~ ~

# execute if score @s action_time matches ..10 run data modify storage temp:_ data.rot2vec set value {abs:0.2}
# execute if score @s action_time matches 11..20 run data modify storage temp:_ data.rot2vec set value {abs:0.2}
# execute if score @s action_time matches 21..25 run data modify storage temp:_ data.rot2vec set value {abs:0.2}
# execute if score @s action_time matches 26..50 run data modify storage temp:_ data.rot2vec set value {abs:0.1}
# execute if score #hostile_target.is_player temp matches 1 rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
# execute unless score #hostile_target.is_player temp matches 1 rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
# data modify entity @s Motion set from storage temp:_ data.vec

execute if score @s action_time matches 30 rotated ~ 0 run particle flame ^ ^1 ^6 0.1 0.1 0.1 0.1 10

execute if score @s action_time matches 30 rotated ~ 0 positioned ^ ^ ^3 as @e[type=armor_stand,tag=bullet.ignitable_dust,tag=!ignited,distance=..12] run function anemoland_contents:sys/entity/bullet/ignitable_dust/fire

execute if score @s action_time matches 30 as @a[distance=..64] at @s run playsound minecraft:entity.blaze.hurt hostile @s ~ ~ ~ 0.7 1
# execute if score @s action_time matches 40 as @a[distance=..64] at @s run playsound minecraft:entity.generic.explode hostile @s ~ ~ ~ 0.7 0

execute if score @s action_time matches 120.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/shake_head/end
