
execute if score #movie.squirrel_head action_time matches ..120 as @e[tag=aj.squirrel_head.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.2

execute as @e[type=armor_stand,tag=movie.squirrel_head,distance=..64] positioned as @e[tag=aj.squirrel_head.root,distance=..64,limit=1] run tp @s ~1 ~-0.5 ~2 120 20

execute if score #movie.squirrel_head action_time matches 40.. run function anemoland_contents:sys/movie/squirrel_head/manual/tick/2/start
