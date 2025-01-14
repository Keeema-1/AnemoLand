
scoreboard players reset #movie.ojinushi action0
scoreboard players reset #movie.ojinushi action_time

kill @e[type=armor_stand,tag=movie.ojinushi]

schedule clear anemoland_contents:sys/movie/ojinushi/tick

execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/ojinushi/end_player

execute as @e[tag=aj.ojinushi.root,distance=..64] at @s run function anemoland_contents:sys/movie/ojinushi/remove

function anemoland_contents:command/field_event/demo2/change/ojinushi_20 {field_id:71}

function anemoland_contents:command/talk/girl1/ojinushi_first