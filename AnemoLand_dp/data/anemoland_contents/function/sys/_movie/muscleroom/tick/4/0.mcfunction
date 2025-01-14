
execute as @e[type=armor_stand,tag=movie.muscleroom,distance=..64] run tp @s ~2 ~4 ~12 170 10

execute if score #movie.muscleroom action_time matches 40.. run function anemoland_contents:sys/movie/muscleroom/manual/tick/5/start
