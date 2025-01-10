tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 30 rotated ~ 0 run particle flame ^ ^1 ^6 0.1 0.1 0.1 0.1 10

execute if score @s action_time matches 30 rotated ~ 0 positioned ^ ^ ^3 as @e[type=armor_stand,tag=bullet.ignitable_dust,tag=!ignited,distance=..12] run function anemoland_contents:sys/entity/bullet/ignitable_dust/fire

execute if score @s action_time matches 30 as @a[distance=..64] at @s run return run playsound minecraft:entity.blaze.hurt hostile @s ~ ~ ~ 0.7 1

execute if score @s action_time matches 120.. run return run function anemoland_contents:sys/entity/mob/bagikeros/action/shake_head/end
