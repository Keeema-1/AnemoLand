
scoreboard players set #movie.garapapas action0 2
scoreboard players set #movie.garapapas action_time 0

execute as @e[tag=aj.garapapas.root,distance=..64] run function animated_java:garapapas/animations/pause_all
execute as @e[tag=aj.garapapas.root,distance=..64] run function animated_java:garapapas/animations/tail_left1/play

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 1.3 0.7
execute as @a[distance=..64] at @s run playsound minecraft:entity.shulker.hurt hostile @s ~ ~ ~ 1.3 0.3

execute as @e[tag=aj.garapapas.root,distance=..64] at @s rotated ~ 0 run tp @s ~ ~-0.5 ~
