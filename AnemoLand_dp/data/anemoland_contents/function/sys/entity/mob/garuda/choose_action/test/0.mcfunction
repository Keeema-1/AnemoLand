execute store result score #random temp run random value 0..5
execute if score #random temp matches 0..0 run function anemoland_contents:sys/entity/mob/garuda/action/pick/start
execute if score #random temp matches 1..1 run function anemoland_contents:sys/entity/mob/garuda/action/wing_side/start
execute if score #random temp matches 2..2 run function anemoland_contents:sys/entity/mob/garuda/action/jump/start
execute if score #random temp matches 3..3 run function anemoland_contents:sys/entity/mob/garuda/action/pick_jump/start
execute if score #random temp matches 4..4 run function anemoland_contents:sys/entity/mob/garuda/action/dash/start
execute if score #random temp matches 5..5 run function anemoland_contents:sys/entity/mob/garuda/action/summer_salt_side/start
