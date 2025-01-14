
execute if score #movie.king_boar action_time matches 1 as @e[tag=aj.boar.root,distance=..64] run function animated_java:boar/animations/pause_all
execute if score #movie.king_boar action_time matches 1 as @e[tag=aj.boar.root,distance=..64] run function animated_java:boar/animations/large_bark/play

execute if score #movie.king_boar action_time matches 1 as @e[type=armor_stand,tag=movie.king_boar,distance=..64] run tp @s ~ ~1 ~20 180 10
execute as @e[type=armor_stand,tag=movie.king_boar,distance=..64] at @s run tp @s ^ ^0.005 ^-0.03 ~ ~

execute if score #movie.king_boar action_time matches 40 run title @a[tag=playing_movie,distance=..64] times 0 100 40
execute if score #movie.king_boar action_time matches 40 run title @a[tag=playing_movie,distance=..64] subtitle {"text":"<< キングボア 出現 >>","bold":true}
execute if score #movie.king_boar action_time matches 40 run function anemoland_contents:sys/movie/common/movie_frame/0

execute if score #movie.king_boar action_time matches 30..60 at @e[tag=aj.boar.root,distance=..64] rotated ~ 0 run particle poof ^ ^0.5 ^3 0.1 0.1 0.1 0 1
execute if score #movie.king_boar action_time matches 20..60 as @a[distance=..64] at @s run playsound entity.hoglin.angry hostile @s ~ ~ ~ 1 0.3

# execute if score #movie.king_boar action_time matches 20..60 as @a[distance=..64] at @s run playsound entity.polar_bear.warning hostile @s ~ ~ ~ 1 0.3

execute if score #movie.king_boar action_time matches 120 as @e[tag=aj.boar.root,distance=..64] run function animated_java:boar/animations/pause_all
execute if score #movie.king_boar action_time matches 120 as @e[tag=aj.boar.root,distance=..64] run function animated_java:boar/animations/large_walk/play

execute if score #movie.king_boar action_time matches 120.. as @e[tag=aj.boar.root,distance=..64] at @s run tp @s ^ ^ ^0.3

execute if score #movie.king_boar action_time matches 160.. run function anemoland_contents:sys/movie/king_boar/end
