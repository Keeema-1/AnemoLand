
scoreboard players set #movie.muscleroom action0 2
scoreboard players set #movie.muscleroom action_time 0

execute as @e[tag=aj.muscleroom.root,distance=..64] run function animated_java:muscleroom/animations/pause_all
execute as @e[tag=aj.muscleroom.root,distance=..64] run function animated_java:muscleroom/animations/ground2/play

# execute as @e[tag=aj.muscleroom.root,distance=..64] run function animated_java:muscleroom/animations/pause_all
# execute as @e[tag=aj.muscleroom.root,distance=..64] run function animated_java:muscleroom/animations/jump_launch1/play

# execute as @a[distance=..64] at @s run playsound entity.polar_bear.hurt hostile @s ~ ~ ~ 1 0.5
