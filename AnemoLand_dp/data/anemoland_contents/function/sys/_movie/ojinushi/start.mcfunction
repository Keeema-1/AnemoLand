
kill @e[type=armor_stand,tag=movie.ojinushi]

summon armor_stand 3072.0 4.0 5120.0 {Tags:["camera","camera.near","movie.ojinushi"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
summon armor_stand 3072.0 4.0 5120.0 {Tags:["camera","camera.far","movie.ojinushi"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}

execute positioned 3072.0 2.5 5120.0 run function animated_java:ojinushi/summon/default
tag @e[tag=newly_summoned.aj,limit=1] remove newly_summoned.aj

scoreboard players set #movie.ojinushi action0 0
scoreboard players set #movie.ojinushi action_time 0

schedule function anemoland_contents:sys/movie/ojinushi/tick 1t replace

execute positioned 3072.0 0.0 5120.0 as @a[distance=..64] run function anemoland_contents:sys/movie/ojinushi/start_player
