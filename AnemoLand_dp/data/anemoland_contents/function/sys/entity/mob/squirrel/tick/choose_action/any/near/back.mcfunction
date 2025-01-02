execute store result score #random temp run random value 0..3
execute if score #random temp matches 0..0 run function anemoland_contents:sys/entity/mob/squirrel/action/bite/start
execute if score #random temp matches 1..3 run function anemoland_contents:sys/entity/mob/squirrel/action/spin/start
