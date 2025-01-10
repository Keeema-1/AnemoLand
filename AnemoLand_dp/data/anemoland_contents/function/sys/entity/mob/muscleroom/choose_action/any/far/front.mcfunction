execute store result score #random temp run random value 0..15
execute if score #random temp matches 0..2 run function anemoland_contents:sys/entity/mob/muscleroom/action/walk/start
execute if score #random temp matches 3..5 run function anemoland_contents:sys/entity/mob/muscleroom/action/jump/start
execute if score #random temp matches 6..8 run function anemoland_contents:sys/entity/mob/muscleroom/action/punch/start
execute if score #random temp matches 9..9 run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_circle/start
execute if score #random temp matches 10..12 run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_line/start
execute if score #random temp matches 13..15 run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_target/start
