
# execute if score #movie.squirrel_head action_time matches 40.. as @e[tag=aj.squirrel_head.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.5

execute if score #movie.squirrel_head action_time matches ..1 as @e[type=armor_stand,tag=movie.squirrel_head,distance=..64] positioned as @e[tag=aj.squirrel_head.root,distance=..64,limit=1] run tp @s ~1 ~-1 ~4 160 0
execute if score #movie.squirrel_head action_time matches 2.. as @e[type=armor_stand,tag=movie.squirrel_head,distance=..64] positioned as @e[tag=aj.squirrel_head.root,distance=..64,limit=1] run tp @s ~1 ~-1 ~4 160 0

# execute if score #movie.squirrel_head action_time matches 40 as @a[distance=..64] at @s run playsound minecraft:entity.hoglin.attack hostile @s ~ ~ ~ 2 0.7
# execute if score #movie.squirrel_head action_time matches 40 as @a[distance=..64] at @s run playsound minecraft:entity.hoglin.attack hostile @s ~ ~ ~ 2 0.8

execute if score #movie.squirrel_head action_time matches 30 as @e[tag=aj.squirrel_head.root,distance=..64] run function animated_java:squirrel_head/animations/bite2/play

execute if score #movie.squirrel_head action_time matches 35..40 at @e[tag=aj.squirrel_head.root,distance=..64,limit=1] run particle sweep_attack ^ ^-1 ^5
execute if score #movie.squirrel_head action_time matches 30..35 as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 2 0

execute if score #movie.squirrel_head action_time matches 31..40 as @e[tag=aj.squirrel_head.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.5
execute if score #movie.squirrel_head action_time matches 41..50 as @e[tag=aj.squirrel_head.root,distance=..64] at @s rotated ~ 0 run tp @s ^ ^ ^0.2

execute if score #movie.squirrel_head action_time matches 100.. run function anemoland_contents:sys/movie/squirrel_head/manual/tick/3/start
