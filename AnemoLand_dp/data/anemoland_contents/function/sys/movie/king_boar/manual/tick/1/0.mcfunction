
execute if score #movie.king_boar action_time matches ..120 as @e[tag=aj.boar.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.1

execute as @e[type=armor_stand,tag=movie.king_boar,distance=..64] positioned as @e[tag=aj.boar.root,distance=..64,limit=1] run tp @s ~0.5 ~-0.5 ~0.5 120 20

execute if score #movie.king_boar action_time matches 60.. run function anemoland_contents:sys/movie/king_boar/manual/tick/2/start
