
scoreboard players set #movie.squirrel_head action0 2
scoreboard players set #movie.squirrel_head action_time 0

# execute as @a[distance=..64] at @s run playsound entity.polar_bear.hurt hostile @s ~ ~ ~ 1 0.5

execute as @e[tag=aj.squirrel_head.root,distance=..64] run function animated_java:squirrel_head/animations/pause_all
execute as @e[tag=aj.squirrel_head.root,distance=..64] run function animated_java:squirrel_head/animations/bite1/play

execute as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 2 0.5

# execute at @e[tag=aj.squirrel_head.root,distance=..64,limit=1] run particle cloud ^1 ^-1.5 ^2 0 0 0 0.00 4
# execute at @e[tag=aj.squirrel_head.root,distance=..64,limit=1] run particle cloud ^-1 ^-1.5 ^2 0 0 0 0.00 4
# execute as @a[distance=..64] at @s run playsound minecraft:entity.hoglin.angry hostile @s ~ ~ ~ 2 0.7
# execute as @a[distance=..64] at @s run playsound minecraft:entity.hoglin.angry hostile @s ~ ~ ~ 2 0.8