
execute as @e[type=armor_stand,tag=movie.bagikeros,distance=..64] run tp @s ~ ~8 ~10 0 50

execute as @e[tag=aj.bagikeros.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.2

execute if score #movie.bagikeros action_time matches 100.. run function anemoland_contents:sys/movie/bagikeros/manual/tick/5/start
