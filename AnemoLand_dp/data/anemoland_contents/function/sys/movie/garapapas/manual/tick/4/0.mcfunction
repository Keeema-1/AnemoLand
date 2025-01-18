# カメラ
    execute if score #movie.garapapas action_time matches 1 as @e[type=armor_stand,tag=movie.garapapas,distance=..64] at @e[tag=aj.garapapas.root,distance=..64,limit=1] positioned ^ ^-1.5 ^2 rotated ~180 0 rotated ~0 ~10 run tp @s ^ ^ ^-4 ~ ~
    execute as @e[type=armor_stand,tag=movie.garapapas,distance=..64] at @s run tp @s ^ ^0.005 ^-0.03 ~ ~

execute if score #movie.garapapas action_time matches 40 run title @a[tag=playing_movie,distance=..64] times 0 100 40
execute if score #movie.garapapas action_time matches 40 run title @a[tag=playing_movie,distance=..64] subtitle {"text":"<< ガラパパス 出現 >>","bold":true}
execute if score #movie.garapapas action_time matches 40 run function anemoland_contents:sys/movie/common/movie_frame/0

execute if score #movie.garapapas action_time matches 50..80 as @a[distance=..64] at @s run playsound minecraft:entity.ravager.roar hostile @s ~ ~ ~ 0.6 0.7

execute if score #movie.garapapas action_time matches 140 as @e[tag=aj.garapapas.root,distance=..64] run function animated_java:garapapas/animations/pause_all
execute if score #movie.garapapas action_time matches 140 as @e[tag=aj.garapapas.root,distance=..64] run function animated_java:garapapas/animations/walk/play

execute if score #movie.garapapas action_time matches 140.. as @e[tag=aj.garapapas.root,distance=..64] at @s run tp @s ^ ^ ^0.3

execute if score #movie.garapapas action_time matches 160.. run function anemoland_contents:sys/movie/garapapas/end
