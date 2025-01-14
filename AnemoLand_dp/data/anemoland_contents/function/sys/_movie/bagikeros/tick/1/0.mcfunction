
# execute if score #movie.bagikeros action_time matches ..120 as @e[tag=aj.bagikeros.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.1

# execute as @e[type=armor_stand,tag=movie.bagikeros,distance=..64] positioned as @e[tag=aj.bagikeros.root,distance=..64,limit=1] run tp @s ~0.5 ~-0.5 ~0.5 120 20

execute as @e[type=armor_stand,tag=movie.bagikeros,distance=..64] run tp @s ~4 ~6 ~8 150 10

execute if score #movie.bagikeros action_time matches 30.. run function anemoland_contents:sys/movie/bagikeros/manual/tick/2/start
