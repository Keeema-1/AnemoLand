
execute if score #movie.bagikeros action_time matches 1 as @e[type=armor_stand,tag=movie.bagikeros,distance=..64] at @e[tag=aj.bagikeros.root,distance=..64] run tp @s ~ ~-1 ~5 180 10
execute as @e[type=armor_stand,tag=movie.bagikeros,distance=..64] at @s run tp @s ^ ^0.005 ^-0.03 ~ ~

execute if score #movie.bagikeros action_time matches 40 run title @a[tag=playing_movie,distance=..64] times 0 100 40
execute if score #movie.bagikeros action_time matches 40 run title @a[tag=playing_movie,distance=..64] subtitle {"text":"<< バギケロス 出現 >>","bold":true}
execute if score #movie.bagikeros action_time matches 40 run function anemoland_contents:sys/movie/common/movie_frame/0

execute if score #movie.bagikeros action_time matches 40..100 as @a[distance=..64] at @s run playsound entity.polar_bear.warning hostile @s ~ ~ ~ 1 0.3

# execute if score #movie.bagikeros action_time matches 140 as @e[tag=aj.bagikeros.root,distance=..64] run function animated_java:bagikeros/animations/pause_all
# execute if score #movie.bagikeros action_time matches 140 as @e[tag=aj.bagikeros.root,distance=..64] run function animated_java:bagikeros/animations/walk/play

# execute if score #movie.bagikeros action_time matches 140.. as @e[tag=aj.bagikeros.root,distance=..64] at @s run tp @s ^ ^ ^0.3

execute if score #movie.bagikeros action_time matches 160.. run function anemoland_contents:sys/movie/bagikeros/end
