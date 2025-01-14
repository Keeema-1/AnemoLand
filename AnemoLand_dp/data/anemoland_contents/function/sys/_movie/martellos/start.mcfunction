
kill @e[type=armor_stand,tag=movie.martellos]

summon armor_stand 3072.0 4.0 3072.0 {Tags:["camera","camera.near","movie.martellos"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
summon armor_stand 3072.0 4.0 3072.0 {Tags:["camera","camera.far","movie.martellos"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}

# execute as @e[type=armor_stand,tag=camera,tag=movie.martellos] run tp @s 2048.0 4.0 1795.0 180 30

execute positioned 3072.0 3.5 3072.0 run function animated_java:martellos/summon/default
tag @e[tag=newly_summoned.aj,limit=1] remove newly_summoned.aj

scoreboard players set #movie.martellos action0 0
scoreboard players set #movie.martellos action_time 0

schedule function anemoland_contents:sys/movie/martellos/tick 1t replace

execute positioned 3072.0 0.0 3072.0 as @a[distance=..64] run function anemoland_contents:sys/movie/martellos/start_player
