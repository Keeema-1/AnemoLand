scoreboard players add #movie.bagikeros action_time 1

execute if score #movie.bagikeros action0 matches 0 run function anemoland_contents:sys/movie/bagikeros/manual/tick/0/0
execute if score #movie.bagikeros action0 matches 1 run function anemoland_contents:sys/movie/bagikeros/manual/tick/1/0
execute if score #movie.bagikeros action0 matches 2 run function anemoland_contents:sys/movie/bagikeros/manual/tick/2/0
execute if score #movie.bagikeros action0 matches 3 run function anemoland_contents:sys/movie/bagikeros/manual/tick/3/0
execute if score #movie.bagikeros action0 matches 4 run function anemoland_contents:sys/movie/bagikeros/manual/tick/4/0
execute if score #movie.bagikeros action0 matches 5 run function anemoland_contents:sys/movie/bagikeros/manual/tick/5/0
execute if score #movie.bagikeros action0 matches 6 run function anemoland_contents:sys/movie/bagikeros/manual/tick/6/0

execute as @e[type=armor_stand,tag=movie.bagikeros,tag=camera.far,distance=..64] at @e[type=armor_stand,tag=movie.bagikeros,tag=camera.near,distance=..64,limit=1] run tp @s ^ ^ ^-4

execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/bagikeros/manual/tick/player
