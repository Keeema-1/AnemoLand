execute store result score #random temp run random value 0..2
execute if score #random temp matches 0..1 run function anemoland_contents:sys/entity/mob/martellos/action/knock/start
execute if score #random temp matches 2..2 run function anemoland_contents:sys/entity/mob/martellos/action/dash/start
