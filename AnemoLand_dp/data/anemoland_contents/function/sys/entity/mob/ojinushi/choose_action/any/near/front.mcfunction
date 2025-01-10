execute store result score #random temp run random value 0..11
execute if score #random temp matches 0..2 run function anemoland_contents:sys/entity/mob/ojinushi/action/punch/start
execute if score #random temp matches 3..5 run function anemoland_contents:sys/entity/mob/ojinushi/action/launch/start
execute if score #random temp matches 6..7 run function anemoland_contents:sys/entity/mob/ojinushi/action/jump_launch/start
execute if score #random temp matches 8..9 run function anemoland_contents:sys/entity/mob/ojinushi/action/bite_side/start
execute if score #random temp matches 10..10 run function anemoland_contents:sys/entity/mob/ojinushi/action/sidestep/start
execute if score #random temp matches 11..11 run function anemoland_contents:sys/entity/mob/ojinushi/action/launch_up/start
