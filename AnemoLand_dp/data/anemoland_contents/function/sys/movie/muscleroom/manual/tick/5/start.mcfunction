
scoreboard players set #movie.muscleroom action0 5
scoreboard players set #movie.muscleroom action_time 0

execute as @e[tag=aj.muscleroom.root,distance=..64] run function animated_java:muscleroom/animations/pause_all
execute as @e[tag=aj.muscleroom.root,distance=..64] run function animated_java:muscleroom/animations/left_punch2/play
