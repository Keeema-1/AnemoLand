
execute as @e[type=armor_stand,tag=movie.bagikeros,distance=..64] run tp @s ~-2 ~3 ~12 210 10

execute if score #movie.bagikeros action_time matches 5..10 positioned as @e[tag=aj.bagikeros.root,distance=..64] run particle sweep_attack ^ ^ ^7
execute if score #movie.bagikeros action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.fox.bite hostile @s ~ ~ ~ 0.7 0
execute if score #movie.bagikeros action_time matches ..10 as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 0.7 0

execute if score #movie.bagikeros action_time matches 5..20 as @e[tag=aj.bagikeros.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.3
execute if score #movie.bagikeros action_time matches 21..40 as @e[tag=aj.bagikeros.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.1

execute if score #movie.bagikeros action_time matches 80.. run function anemoland_contents:sys/movie/bagikeros/manual/tick/3/start
