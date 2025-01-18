
scoreboard players set #movie.garapapas action0 4
scoreboard players set #movie.garapapas action_time 0

execute as @e[tag=aj.garapapas.root,distance=..64] run function animated_java:garapapas/animations/pause_all
execute as @e[tag=aj.garapapas.root,distance=..64] run function animated_java:garapapas/animations/bark/play
