
execute as @e[type=armor_stand,tag=movie.muscleroom,distance=..64] run tp @s ~2 ~6 ~8 160 30

execute if score #movie.muscleroom action_time matches 16 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0
execute if score #movie.muscleroom action_time matches 21 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0
execute if score #movie.muscleroom action_time matches 26 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0
execute if score #movie.muscleroom action_time matches 31 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0

execute if score @s action_time matches ..20 as @a[distance=..64] at @s run playsound minecraft:block.basalt.break hostile @s ~ ~ ~ 0.5 0

execute if score #movie.muscleroom action_time matches 60.. run function anemoland_contents:sys/movie/muscleroom/manual/tick/3/start
