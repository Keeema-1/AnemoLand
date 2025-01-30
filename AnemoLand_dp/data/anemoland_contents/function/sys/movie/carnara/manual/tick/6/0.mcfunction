# カメラ
    execute if score #movie.carnara action_time matches 1 as @e[type=armor_stand,tag=movie.carnara,distance=..64] at @e[tag=aj.carnara.root,distance=..64,limit=1] positioned ^ ^1.5 ^2 rotated ~180 0 rotated ~0 ~20 run tp @s ^ ^ ^-12 ~ ~
    execute as @e[type=armor_stand,tag=movie.carnara,distance=..64] at @s run tp @s ^ ^0.005 ^-0.03 ~ ~

execute if score #movie.carnara action_time matches 40 run title @a[tag=playing_movie,distance=..64] times 0 100 40
execute if score #movie.carnara action_time matches 40 run title @a[tag=playing_movie,distance=..64] subtitle {"text":"<< カールナーラ 出現 >>","bold":true}
execute if score #movie.carnara action_time matches 40 run function anemoland_contents:sys/movie/common/movie_frame/0

execute if score #movie.carnara action_time matches 30..90 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 0

# execute if score #movie.carnara action_time matches 50..80 as @a[distance=..64] at @s run playsound minecraft:entity.ravager.roar hostile @s ~ ~ ~ 0.6 0.7

# execute if score #movie.carnara action_time matches 140 as @e[tag=aj.carnara.root,distance=..64] run function animated_java:carnara/animations/pause_all
# execute if score #movie.carnara action_time matches 140 as @e[tag=aj.carnara.root,distance=..64] run function animated_java:carnara/animations/walk/play

# execute if score #movie.carnara action_time matches 140.. as @e[tag=aj.carnara.root,distance=..64] at @s run tp @s ^ ^ ^0.3

execute if score #movie.carnara action_time matches 160.. run function anemoland_contents:sys/movie/carnara/end
