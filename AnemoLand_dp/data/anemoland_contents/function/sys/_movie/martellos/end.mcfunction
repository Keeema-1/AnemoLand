
scoreboard players reset #movie.martellos action0
scoreboard players reset #movie.martellos action_time

kill @e[type=armor_stand,tag=movie.martellos]

schedule clear anemoland_contents:sys/movie/martellos/tick

execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/martellos/end_player

execute as @e[tag=aj.martellos.root,distance=..64] at @s run function anemoland_contents:sys/movie/martellos/remove

function anemoland_contents:command/field_event/demo2/change/martellos_15 {field_id:63}

function anemoland_contents:command/talk/girl1/martellos_first