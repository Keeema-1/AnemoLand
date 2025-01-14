
# execute if score #movie.ojinushi action_time matches 10 as @e[type=armor_stand,tag=movie.ojinushi,distance=..64] run tp @s ~1 ~2 ~-2 150 30

execute if score #movie.ojinushi action_time matches 0.. as @e[type=armor_stand,tag=movie.ojinushi,distance=..64] run tp @s ~-1 ~1 ~7 210 10

execute if score #movie.ojinushi action_time matches ..10 as @e[tag=aj.ojinushi.root,distance=..64] at @s run tp ^ ^ ^0.9

execute if score #movie.ojinushi action_time matches 11..15 as @e[tag=aj.ojinushi.root,distance=..64] at @s run tp ^ ^ ^0.6

execute if score #movie.ojinushi action_time matches 16..20 as @e[tag=aj.ojinushi.root,distance=..64] at @s run tp ^ ^ ^0.3

execute if score #movie.ojinushi action_time matches 21..30 as @e[tag=aj.ojinushi.root,distance=..64] at @s run tp ^ ^ ^0.1

execute if score #movie.ojinushi action_time matches 2 as @a[distance=..64] at @s run playsound minecraft:entity.wind_charge.wind_burst hostile @s ~ ~ ~ 4 0
execute if score #movie.ojinushi action_time matches 16..18 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 4 0
execute if score #movie.ojinushi action_time matches 20..22 as @e[tag=aj.ojinushi.root,distance=..64] at @s run particle explosion ^ ^-2 ^3 0 0 0 1 1
execute if score #movie.ojinushi action_time matches 22 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 2 1

execute if score #movie.ojinushi action_time matches 60.. run function anemoland_contents:sys/movie/ojinushi/manual/tick/6/start
