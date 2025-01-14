
execute if score #movie.bagikeros action_time matches ..20 as @e[tag=aj.bagikeros.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.1

execute if score #movie.bagikeros action_time matches 0.. run function anemoland_contents:sys/movie/bagikeros/manual/tick/6/start
