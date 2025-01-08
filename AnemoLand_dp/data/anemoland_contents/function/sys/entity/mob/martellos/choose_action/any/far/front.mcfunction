execute store result score #random temp run random value 0..10
execute if score #random temp matches 0..3 run function anemoland_contents:sys/entity/mob/martellos/action/walk/start
execute if score #random temp matches 4..4 run function anemoland_contents:sys/entity/mob/martellos/action/knock/start
execute if score #random temp matches 5..6 run function anemoland_contents:sys/entity/mob/martellos/action/spin_dirt/start
execute if score #random temp matches 7..9 run function anemoland_contents:sys/entity/mob/martellos/action/dash/start
execute if score #random temp matches 10..10 run function anemoland_contents:sys/entity/mob/martellos/action/knock_tail/start
