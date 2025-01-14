
# execute if score #movie.ojinushi action_time matches ..120 as @e[tag=aj.boar.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.1

# execute as @e[type=armor_stand,tag=movie.ojinushi,distance=..64] positioned as @e[tag=aj.ojinushi.root,distance=..64,limit=1] run tp @s ~0.5 ~-0.5 ~0.5 120 20

execute as @e[type=armor_stand,tag=movie.ojinushi,distance=..64] run tp @s ~2 ~4 ~2 150 10

execute if score #movie.ojinushi action_time matches 20.. run function anemoland_contents:sys/movie/ojinushi/manual/tick/2/start
