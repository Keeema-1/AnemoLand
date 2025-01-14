
execute if score #movie.king_boar action_time matches 40.. as @e[tag=aj.boar.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.5

execute if score #movie.king_boar action_time matches ..39 as @e[type=armor_stand,tag=movie.king_boar,distance=..64] positioned as @e[tag=aj.boar.root,distance=..64,limit=1] run tp @s ~ ~-1 ~ 160 0
execute if score #movie.king_boar action_time matches 40.. as @e[type=armor_stand,tag=movie.king_boar,distance=..64] positioned as @e[tag=aj.boar.root,distance=..64,limit=1] run tp @s ~1 ~-1 ~2 160 0

execute if score #movie.king_boar action_time matches 40 as @a[distance=..64] at @s run playsound minecraft:entity.hoglin.attack hostile @s ~ ~ ~ 2 0.7
execute if score #movie.king_boar action_time matches 40 as @a[distance=..64] at @s run playsound minecraft:entity.hoglin.attack hostile @s ~ ~ ~ 2 0.8

execute if score #movie.king_boar action_time matches 80.. run function anemoland_contents:sys/movie/king_boar/manual/tick/3/start
