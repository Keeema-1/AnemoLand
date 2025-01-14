
execute if score #movie.ojinushi action_time matches 1 as @e[tag=aj.ojinushi.root,distance=..64] run function animated_java:ojinushi/animations/pause_all
execute if score #movie.ojinushi action_time matches 1 as @e[tag=aj.ojinushi.root,distance=..64] run function animated_java:ojinushi/animations/default/play

execute if score #movie.ojinushi action_time matches 5 as @e[tag=aj.ojinushi.root,distance=..64] run tp @s ~ ~4.5 ~

execute as @e[type=armor_stand,tag=movie.ojinushi,distance=..64] run tp @s ~2 ~4 ~2 150 10

execute if score #movie.ojinushi action_time matches 40.. run function anemoland_contents:sys/movie/ojinushi/manual/tick/1/start
