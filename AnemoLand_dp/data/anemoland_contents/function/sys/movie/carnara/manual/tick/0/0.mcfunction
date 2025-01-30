
execute if score #movie.carnara action_time matches 5 as @e[tag=aj.carnara.root,distance=..64] run tp @s ~2 3.5 ~-6

execute if score #movie.carnara action_time matches 5 as @e[tag=aj.carnara.root,distance=..64] run function animated_java:carnara/animations/pause_all
execute if score #movie.carnara action_time matches 5 as @e[tag=aj.carnara.root,distance=..64] run function animated_java:carnara/animations/walk/play

execute if score #movie.carnara action_time matches ..20 as @e[type=armor_stand,tag=movie.carnara,distance=..64] run tp @s ~2 ~2 ~-6 150 20

execute if score #movie.carnara action_time matches 21.. as @e[tag=aj.carnara.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.2

execute if score #movie.carnara action_time matches 40.. run function anemoland_contents:sys/movie/carnara/manual/tick/1/start
