
execute if score #movie.bagikeros action_time matches 1 as @e[tag=aj.bagikeros.root,distance=..64] run function animated_java:bagikeros/animations/pause_all
execute if score #movie.bagikeros action_time matches 1 as @e[tag=aj.bagikeros.root,distance=..64] run function animated_java:bagikeros/animations/default/play

execute if score #movie.bagikeros action_time matches 5 as @e[tag=aj.bagikeros.root,distance=..64] run tp @s ~ ~4.5 ~

execute as @e[type=armor_stand,tag=movie.bagikeros,distance=..64] run tp @s ~4 ~6 ~8 150 10

execute if score #movie.bagikeros action_time matches 40.. run function anemoland_contents:sys/movie/bagikeros/manual/tick/1/start
