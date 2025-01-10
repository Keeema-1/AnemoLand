execute store result score #random temp run random value 0..15
execute if score #random temp matches 0..3 run function anemoland_contents:sys/entity/mob/muscleroom/action/jump/start
execute if score #random temp matches 4..7 run function anemoland_contents:sys/entity/mob/muscleroom/action/punch/start
execute if score #random temp matches 8..10 run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_circle/start
execute if score #random temp matches 11..11 run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_line/start
execute if score #random temp matches 12..13 run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_target/start
execute if score #random temp matches 14..15 run function anemoland_contents:sys/entity/mob/muscleroom/action/backstep/start
