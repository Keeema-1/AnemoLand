
kill @e[type=armor_stand,tag=movie.king_boar]

summon armor_stand 3072.0 4.0 1536.0 {Tags:["camera","camera.near","movie.king_boar"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}
summon armor_stand 3072.0 4.0 1536.0 {Tags:["camera","camera.far","movie.king_boar"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}

# execute as @e[type=armor_stand,tag=camera,tag=movie.king_boar] run tp @s 2048.0 4.0 1536.0 180 30

execute positioned 3072.0 2.5 1536.0 run function animated_java:boar/summon/king_default
tag @e[tag=newly_summoned.aj,limit=1] remove newly_summoned.aj

scoreboard players set #movie.king_boar action0 0
scoreboard players set #movie.king_boar action_time 0

schedule function anemoland_contents:sys/movie/king_boar/tick 1t replace

execute positioned 3072.0 0.0 1536.0 as @a[distance=..64] run function anemoland_contents:sys/movie/king_boar/start_player

function anemoland_contents:command/talk/system/movie_camera_distance
