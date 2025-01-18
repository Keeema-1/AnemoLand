
scoreboard players set #movie.squirrel_head action0 3
scoreboard players set #movie.squirrel_head action_time 0

# execute as @a[distance=..64] at @s run playsound entity.polar_bear.hurt hostile @s ~ ~ ~ 1 0.5

execute as @e[tag=aj.squirrel_head.root,distance=..64] run function animated_java:squirrel_head/animations/pause_all
execute as @e[tag=aj.squirrel_head.root,distance=..64] run function animated_java:squirrel_head/animations/spin_left1/play
