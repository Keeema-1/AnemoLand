
execute if score #movie.martellos action_time matches 0 as @e[tag=aj.martellos.root,distance=..64] run function animated_java:martellos/animations/pause_all
execute if score #movie.martellos action_time matches 0 as @e[tag=aj.martellos.root,distance=..64] run function animated_java:martellos/animations/knock_left1/play
execute if score #movie.martellos action_time matches 0..20 as @e[tag=aj.martellos.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^-0.1

execute if score #movie.martellos action_time matches 30 as @e[tag=aj.martellos.root,distance=..64] run function animated_java:martellos/animations/pause_all
execute if score #movie.martellos action_time matches 30 as @e[tag=aj.martellos.root,distance=..64] run function animated_java:martellos/animations/knock_left2/play
execute if score #movie.martellos action_time matches 30..35 as @e[tag=aj.martellos.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.4
execute if score #movie.martellos action_time matches 36..40 as @e[tag=aj.martellos.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.2

execute if score #movie.martellos action_time matches 40 at @e[tag=aj.martellos.root,distance=..64] rotated ~ 0 positioned ^ ^-2 ^2 run function anemoland_contents:sys/entity/mob/martellos/tick/action/11_knock/1_knock/particle
execute if score #movie.martellos action_time matches 40 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 1

execute as @e[type=armor_stand,tag=movie.martellos,distance=..64] run tp @s ~-0.5 3.5 ~6.5 210 20

execute if score #movie.martellos action_time matches 60.. run function anemoland_contents:sys/movie/martellos/manual/tick/3/start
