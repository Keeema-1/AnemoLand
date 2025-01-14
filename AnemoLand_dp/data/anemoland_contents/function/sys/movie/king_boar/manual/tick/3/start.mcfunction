
scoreboard players set #movie.king_boar action0 3
scoreboard players set #movie.king_boar action_time 0

# execute as @a[distance=..64] at @s run playsound entity.polar_bear.hurt hostile @s ~ ~ ~ 1 0.5

execute as @e[tag=aj.boar.root,distance=..64] run function animated_java:boar/animations/pause_all
execute as @e[tag=aj.boar.root,distance=..64] run function animated_java:boar/animations/large_brake/play
