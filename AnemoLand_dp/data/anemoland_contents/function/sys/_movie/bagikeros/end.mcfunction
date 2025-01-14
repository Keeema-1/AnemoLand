
scoreboard players reset #movie.bagikeros action0
scoreboard players reset #movie.bagikeros action_time

kill @e[type=armor_stand,tag=movie.bagikeros]

schedule clear anemoland_contents:sys/movie/bagikeros/tick

execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/bagikeros/end_player

execute as @e[tag=aj.bagikeros.root,distance=..64] at @s run function anemoland_contents:sys/movie/bagikeros/remove

function anemoland_contents:command/field_event/demo2/change/bagikeros_25 {field_id:65}

function anemoland_contents:command/talk/girl1/bagikeros_first