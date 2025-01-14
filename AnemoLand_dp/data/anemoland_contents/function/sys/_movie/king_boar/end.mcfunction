
scoreboard players reset #movie.king_boar action0
scoreboard players reset #movie.king_boar action_time

kill @e[type=armor_stand,tag=movie.king_boar]

schedule clear anemoland_contents:sys/movie/king_boar/tick

execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/king_boar/end_player

execute as @e[tag=aj.king_boar.root,distance=..64] at @s run function anemoland_contents:sys/movie/king_boar/remove

function anemoland_contents:command/field_event/demo2/change/king_boar_15 {field_id:43}

function anemoland_contents:command/talk/girl1/king_boar_first