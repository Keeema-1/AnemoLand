
execute if score #movie.martellos action_time matches 5 as @e[tag=aj.martellos.root,distance=..64] run function animated_java:martellos/animations/default/play

execute as @e[type=armor_stand,tag=movie.martellos,distance=..64] run tp @s ~ 3.0 ~3 150 20

execute if score #movie.martellos action_time matches 40.. run function anemoland_contents:sys/movie/martellos/manual/tick/1/start
