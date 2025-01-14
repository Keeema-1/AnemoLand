
scoreboard players set #movie.bagikeros action0 1
scoreboard players set #movie.bagikeros action_time 0

title @a[tag=playing_movie,distance=..64] times 20 1000 20
title @a[tag=playing_movie,distance=..64] subtitle ""
function anemoland_contents:sys/movie/common/movie_frame/0

execute as @e[tag=aj.bagikeros.root,distance=..64] run function animated_java:bagikeros/animations/pause_all
execute as @e[tag=aj.bagikeros.root,distance=..64] run function animated_java:bagikeros/animations/bite1/play

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 2 0.6

# execute as @a[distance=..64] at @s run playsound entity.polar_bear.hurt hostile @s ~ ~ ~ 1 0.5
