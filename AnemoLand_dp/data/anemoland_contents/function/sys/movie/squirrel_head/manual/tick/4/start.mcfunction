
scoreboard players set #movie.squirrel_head action0 4
scoreboard players set #movie.squirrel_head action_time 0

execute as @e[tag=aj.squirrel_head.root,distance=..64] run function animated_java:squirrel_head/animations/pause_all
execute as @e[tag=aj.squirrel_head.root,distance=..64] run function animated_java:squirrel_head/animations/bark/play
