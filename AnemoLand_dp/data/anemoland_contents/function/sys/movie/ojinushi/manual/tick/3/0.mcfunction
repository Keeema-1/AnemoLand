
execute as @e[type=armor_stand,tag=movie.ojinushi,distance=..64] run tp @s ~1 ~2 ~-2 150 30

execute if score #movie.ojinushi action_time matches 20.. run function anemoland_contents:sys/movie/ojinushi/manual/tick/4/start
