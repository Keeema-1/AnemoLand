execute store result score #random temp run random value 0..5
execute if score #random temp matches 0..4 run function anemoland_contents:sys/entity/mob/squirrel/action/walk/start
execute if score #random temp matches 5..5 run function anemoland_contents:sys/entity/mob/squirrel/action/spin/start
