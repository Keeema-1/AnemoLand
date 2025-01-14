
execute as @e[type=armor_stand,tag=movie.bagikeros,distance=..64] run tp @s ~ ~4 ~16 180 0

execute if score #movie.bagikeros action_time matches 21.. as @e[tag=aj.bagikeros.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.1

execute if score #movie.bagikeros action_time matches 40.. run function anemoland_contents:sys/movie/bagikeros/manual/tick/4/start
