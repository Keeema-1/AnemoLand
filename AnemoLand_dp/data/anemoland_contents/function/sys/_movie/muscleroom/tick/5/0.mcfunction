
execute as @e[type=armor_stand,tag=movie.muscleroom,distance=..64] run tp @s ~1 ~2 ~19 150 10

execute if score #movie.muscleroom action_time matches ..10 as @e[tag=aj.muscleroom.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^0.9
execute if score #movie.muscleroom action_time matches 11..20 as @e[tag=aj.muscleroom.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^0.6
execute if score #movie.muscleroom action_time matches 21..30 as @e[tag=aj.muscleroom.root,distance=..64] at @s rotated ~ 0 run tp ^ ^ ^0.3

execute if score #movie.muscleroom action_time matches 2 as @a[distance=..64] at @s run playsound minecraft:entity.wind_charge.wind_burst hostile @s ~ ~ ~ 4 0
execute if score #movie.muscleroom action_time matches 13..15 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 4 0

execute if score #movie.muscleroom action_time matches 100.. run function anemoland_contents:sys/movie/muscleroom/manual/tick/6/start
