
execute as @e[type=armor_stand,tag=movie.muscleroom,distance=..64] run tp @s ~-2 ~3 ~4 210 10

execute if score #movie.muscleroom action_time matches 1 as @e[tag=aj.muscleroom.root,distance=..64] run function animated_java:muscleroom/animations/pause_all
execute if score #movie.muscleroom action_time matches 1 as @e[tag=aj.muscleroom.root,distance=..64] run function animated_java:muscleroom/animations/default/play

execute if score #movie.muscleroom action_time matches 5 as @e[tag=aj.muscleroom.root,distance=..64] run tp @s ~ ~3.5 ~

execute if score #movie.muscleroom action_time matches 50.. run function anemoland_contents:sys/movie/muscleroom/manual/tick/1/start
