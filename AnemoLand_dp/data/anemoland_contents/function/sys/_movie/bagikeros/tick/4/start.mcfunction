
scoreboard players set #movie.bagikeros action0 4
scoreboard players set #movie.bagikeros action_time 0

execute as @e[tag=aj.bagikeros.root,distance=..64] run function animated_java:bagikeros/animations/pause_all
execute as @e[tag=aj.bagikeros.root,distance=..64] run function animated_java:bagikeros/animations/shake_walk/play

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 2 0.6
