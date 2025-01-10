execute store result score #random temp run random value 0..9
execute if score #random temp matches 0..1 run function anemoland_contents:sys/entity/mob/ojinushi/action/punch/start
execute if score #random temp matches 2..2 run function anemoland_contents:sys/entity/mob/ojinushi/action/launch/start
execute if score #random temp matches 3..8 run function anemoland_contents:sys/entity/mob/ojinushi/action/walk/start
execute if score #random temp matches 9..9 run function anemoland_contents:sys/entity/mob/ojinushi/action/launch_up/start
