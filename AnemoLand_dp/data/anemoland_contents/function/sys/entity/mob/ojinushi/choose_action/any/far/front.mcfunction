execute store result score #random temp run random value 0..16
execute if score #random temp matches 0..3 run function anemoland_contents:sys/entity/mob/ojinushi/action/punch/start
execute if score #random temp matches 4..7 run function anemoland_contents:sys/entity/mob/ojinushi/action/launch/start
execute if score #random temp matches 8..8 run function anemoland_contents:sys/entity/mob/ojinushi/action/jump_launch/start
execute if score #random temp matches 9..9 run function anemoland_contents:sys/entity/mob/ojinushi/action/bite_side/start
execute if score #random temp matches 10..15 run function anemoland_contents:sys/entity/mob/ojinushi/action/walk/start
execute if score #random temp matches 16..16 run function anemoland_contents:sys/entity/mob/ojinushi/action/launch_up/start
