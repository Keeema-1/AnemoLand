
execute if score #movie.squirrel_head action_time matches 5 as @e[tag=aj.squirrel_head.root,distance=..64] run tp @s ~2 ~2.5 ~-6

execute if score #movie.squirrel_head action_time matches 5 as @e[tag=aj.squirrel_head.root,distance=..64] run function animated_java:squirrel_head/animations/pause_all
execute if score #movie.squirrel_head action_time matches 5 as @e[tag=aj.squirrel_head.root,distance=..64] run function animated_java:squirrel_head/animations/walk/play

execute if score #movie.squirrel_head action_time matches ..20 as @e[type=armor_stand,tag=movie.squirrel_head,distance=..64] run tp @s ~2 ~2 ~-6 150 20

execute if score #movie.squirrel_head action_time matches 21.. as @e[tag=aj.squirrel_head.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.2

execute if score #movie.squirrel_head action_time matches 40.. run function anemoland_contents:sys/movie/squirrel_head/manual/tick/1/start
