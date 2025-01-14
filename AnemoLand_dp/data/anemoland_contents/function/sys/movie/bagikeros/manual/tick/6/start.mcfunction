
scoreboard players set #movie.bagikeros action0 6
scoreboard players set #movie.bagikeros action_time 0

execute as @e[tag=aj.bagikeros.root,distance=..64] run function animated_java:bagikeros/animations/pause_all
execute as @e[tag=aj.bagikeros.root,distance=..64] run function animated_java:bagikeros/animations/bark/play