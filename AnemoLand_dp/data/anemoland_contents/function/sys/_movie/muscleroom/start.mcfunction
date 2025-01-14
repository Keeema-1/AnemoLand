
kill @e[type=armor_stand,tag=movie.muscleroom]

summon armor_stand 3072.0 4.0 7168.0 {Tags:["camera","camera.near","movie.muscleroom"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
summon armor_stand 3072.0 4.0 7168.0 {Tags:["camera","camera.far","movie.muscleroom"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}

# execute as @e[type=armor_stand,tag=camera,tag=movie.muscleroom] run tp @s 2048.0 4.0 2816.0 180 30

execute positioned 3072.0 1.5 7168.0 run function animated_java:muscleroom/summon/default
tag @e[tag=newly_summoned.aj,limit=1] remove newly_summoned.aj

scoreboard players set #movie.muscleroom action0 0
scoreboard players set #movie.muscleroom action_time 0

schedule function anemoland_contents:sys/movie/muscleroom/tick 1t replace

execute positioned 3072.0 0.0 7168.0 as @a[distance=..64] run function anemoland_contents:sys/movie/muscleroom/start_player
