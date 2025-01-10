execute store result score #random temp run random value 0..11
execute if score #random temp matches 0..2 run function anemoland_contents:sys/entity/mob/muscleroom/action/walk/start
execute if score #random temp matches 3..3 run function anemoland_contents:sys/entity/mob/muscleroom/action/jump/start
execute if score #random temp matches 4..4 run function anemoland_contents:sys/entity/mob/muscleroom/action/punch/start
execute if score #random temp matches 5..5 run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_circle/start
execute if score #random temp matches 6..8 run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_line/start
execute if score #random temp matches 9..11 run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_target/start
