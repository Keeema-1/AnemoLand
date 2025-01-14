
scoreboard players reset #movie.muscleroom action0
scoreboard players reset #movie.muscleroom action_time

kill @e[type=armor_stand,tag=movie.muscleroom]

schedule clear anemoland_contents:sys/movie/muscleroom/tick

execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/muscleroom/end_player

execute as @e[tag=aj.muscleroom.root,distance=..64] at @s run function anemoland_contents:sys/movie/muscleroom/remove

function anemoland_contents:command/field_event/demo2/change/muscleroom_25 {field_id:83}

function anemoland_contents:command/talk/girl1/muscleroom_first