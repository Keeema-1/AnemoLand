execute store result score #random temp run random value 0..9
execute if score #random temp matches 0..0 run function anemoland_contents:sys/entity/mob/ojinushi/action/punch/start
execute if score #random temp matches 1..1 run function anemoland_contents:sys/entity/mob/ojinushi/action/launch/start
execute if score #random temp matches 2..3 run function anemoland_contents:sys/entity/mob/ojinushi/action/jump_launch/start
execute if score #random temp matches 4..6 run function anemoland_contents:sys/entity/mob/ojinushi/action/bite_side/start
execute if score #random temp matches 7..7 run function anemoland_contents:sys/entity/mob/ojinushi/action/sidestep/start
execute if score #random temp matches 8..9 run function anemoland_contents:sys/entity/mob/ojinushi/action/launch_up/start
