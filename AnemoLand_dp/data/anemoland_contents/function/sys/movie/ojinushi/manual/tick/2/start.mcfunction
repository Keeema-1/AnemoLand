
scoreboard players set #movie.ojinushi action0 2
scoreboard players set #movie.ojinushi action_time 0

execute as @e[tag=aj.ojinushi.root,distance=..64] run function animated_java:ojinushi/animations/pause_all
execute as @e[tag=aj.ojinushi.root,distance=..64] run function animated_java:ojinushi/animations/jump_launch2_right/play

# execute as @e[tag=aj.ojinushi.root,distance=..64] run function animated_java:ojinushi/animations/pause_all
# execute as @e[tag=aj.ojinushi.root,distance=..64] run function animated_java:ojinushi/animations/jump_launch1/play

# execute as @a[distance=..64] at @s run playsound entity.polar_bear.hurt hostile @s ~ ~ ~ 1 0.5
