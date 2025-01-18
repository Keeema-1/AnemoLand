
execute if score #movie.garapapas action_time matches 5 as @e[tag=aj.garapapas.root,distance=..64] run tp @s ~2 3 ~-6

execute if score #movie.garapapas action_time matches 5 as @e[tag=aj.garapapas.root,distance=..64] run function animated_java:garapapas/animations/pause_all
execute if score #movie.garapapas action_time matches 5 as @e[tag=aj.garapapas.root,distance=..64] run function animated_java:garapapas/animations/walk/play

execute if score #movie.garapapas action_time matches ..20 as @e[type=armor_stand,tag=movie.garapapas,distance=..64] run tp @s ~2 ~2 ~-6 150 20

execute if score #movie.garapapas action_time matches 21.. as @e[tag=aj.garapapas.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.2

execute if score #movie.garapapas action_time matches 40.. run function anemoland_contents:sys/movie/garapapas/manual/tick/1/start
