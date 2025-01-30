
scoreboard players set #movie.carnara action0 6
scoreboard players set #movie.carnara action_time 0

execute as @e[tag=aj.carnara.root,distance=..64] run function animated_java:carnara/animations/pause_all
execute as @e[tag=aj.carnara.root,distance=..64] run function animated_java:carnara/animations/bark/play
