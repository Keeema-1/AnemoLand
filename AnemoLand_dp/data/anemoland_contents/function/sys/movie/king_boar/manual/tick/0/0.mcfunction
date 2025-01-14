
execute if score #movie.king_boar action_time matches 5 as @e[tag=aj.boar.root,distance=..64] run tp @s ~ ~2.5 ~-8

execute if score #movie.king_boar action_time matches 5 as @e[tag=aj.boar.root,distance=..64] run function animated_java:boar/animations/pause_all
execute if score #movie.king_boar action_time matches 5 as @e[tag=aj.boar.root,distance=..64] run function animated_java:boar/animations/large_walk/play

execute as @e[type=armor_stand,tag=movie.king_boar,distance=..64] run tp @s ~ ~2 ~-8 150 20

execute if score #movie.king_boar action_time matches 40.. run function anemoland_contents:sys/movie/king_boar/manual/tick/1/start
