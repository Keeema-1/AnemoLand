execute store result score #random temp run random value 0..13
execute if score #random temp matches 0..3 run function anemoland_contents:sys/entity/mob/muscleroom/action/jump/start
execute if score #random temp matches 4..5 run function anemoland_contents:sys/entity/mob/muscleroom/action/punch/start
execute if score #random temp matches 6..8 run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_circle/start
execute if score #random temp matches 9..10 run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_target/start
execute if score #random temp matches 11..13 run function anemoland_contents:sys/entity/mob/muscleroom/action/backstep/start
