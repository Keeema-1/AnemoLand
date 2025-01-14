
execute as @e[type=armor_stand,tag=movie.muscleroom,distance=..64] run tp @s ~2 ~4 ~8 160 10

execute if score #movie.muscleroom action_time matches 1.. run function anemoland_contents:sys/movie/muscleroom/manual/tick/4/start
