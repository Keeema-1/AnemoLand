
scoreboard players set #movie.ojinushi action0 5
scoreboard players set #movie.ojinushi action_time 0

execute as @e[tag=aj.ojinushi.root,distance=..64] run function animated_java:ojinushi/animations/pause_all
execute as @e[tag=aj.ojinushi.root,distance=..64] run function animated_java:ojinushi/animations/right_punch2/play

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 2 0.9