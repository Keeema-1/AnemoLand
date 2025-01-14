scoreboard players add #movie.king_boar action_time 1

execute if score #movie.king_boar action0 matches 0 run function anemoland_contents:sys/movie/king_boar/tick/0/0
execute if score #movie.king_boar action0 matches 1 run function anemoland_contents:sys/movie/king_boar/tick/1/0
execute if score #movie.king_boar action0 matches 2 run function anemoland_contents:sys/movie/king_boar/tick/2/0
execute if score #movie.king_boar action0 matches 3 run function anemoland_contents:sys/movie/king_boar/tick/3/0
execute if score #movie.king_boar action0 matches 4 run function anemoland_contents:sys/movie/king_boar/tick/4/0
execute if score #movie.king_boar action0 matches 5 run function anemoland_contents:sys/movie/king_boar/tick/5/0

execute as @e[type=armor_stand,tag=movie.king_boar,tag=camera.far,distance=..64] at @e[type=armor_stand,tag=movie.king_boar,tag=camera.near,distance=..64,limit=1] run tp @s ^ ^ ^-4

execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/king_boar/tick/player
