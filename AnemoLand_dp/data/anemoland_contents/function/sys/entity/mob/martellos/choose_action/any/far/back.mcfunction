execute store result score #random temp run random value 0..11
execute if score #random temp matches 0..3 run function anemoland_contents:sys/entity/mob/martellos/action/walk/start
execute if score #random temp matches 4..5 run function anemoland_contents:sys/entity/mob/martellos/action/turn/start
execute if score #random temp matches 6..7 run function anemoland_contents:sys/entity/mob/martellos/action/spin_dirt/start
execute if score #random temp matches 8..8 run function anemoland_contents:sys/entity/mob/martellos/action/dash/start
execute if score #random temp matches 9..10 run function anemoland_contents:sys/entity/mob/martellos/action/knock_tail/start
execute if score #random temp matches 11..11 run function anemoland_contents:sys/entity/mob/martellos/action/backstep/start
