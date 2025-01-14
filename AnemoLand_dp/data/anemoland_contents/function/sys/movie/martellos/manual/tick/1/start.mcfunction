
scoreboard players set #movie.martellos action0 1
scoreboard players set #movie.martellos action_time 0

title @a[tag=playing_movie,distance=..64] times 20 1000 20
title @a[tag=playing_movie,distance=..64] subtitle ""
function anemoland_contents:sys/movie/common/movie_frame/0

execute as @a[distance=..64] at @s run playsound entity.polar_bear.hurt hostile @s ~ ~ ~ 1 0.5
