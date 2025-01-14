
scoreboard players set #movie.ojinushi action0 6
scoreboard players set #movie.ojinushi action_time 0

execute as @e[tag=aj.ojinushi.root,distance=..64] run function animated_java:ojinushi/animations/pause_all
execute as @e[tag=aj.ojinushi.root,distance=..64] run function animated_java:ojinushi/animations/bark/play