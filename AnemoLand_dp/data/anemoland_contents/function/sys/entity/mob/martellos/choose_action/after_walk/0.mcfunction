execute store result score #random temp run random value 0..8
execute if score #random temp matches 0..3 run function anemoland_contents:sys/entity/mob/martellos/action/knock/start
execute if score #random temp matches 4..6 run function anemoland_contents:sys/entity/mob/martellos/action/spin/start
execute if score #random temp matches 7..7 run function anemoland_contents:sys/entity/mob/martellos/action/spin_dirt/start
execute if score #random temp matches 8..8 run function anemoland_contents:sys/entity/mob/martellos/action/knock_tail/start
