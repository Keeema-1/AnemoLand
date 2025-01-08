execute store result score #random temp run random value 0..13
execute if score #random temp matches 0..0 run function anemoland_contents:sys/entity/mob/martellos/action/turn/start
execute if score #random temp matches 1..4 run function anemoland_contents:sys/entity/mob/martellos/action/knock/start
execute if score #random temp matches 5..7 run function anemoland_contents:sys/entity/mob/martellos/action/spin/start
execute if score #random temp matches 8..8 run function anemoland_contents:sys/entity/mob/martellos/action/spin_dirt/start
execute if score #random temp matches 9..9 run function anemoland_contents:sys/entity/mob/martellos/action/dash/start
execute if score #random temp matches 10..11 run function anemoland_contents:sys/entity/mob/martellos/action/knock_tail/start
execute if score #random temp matches 12..13 run function anemoland_contents:sys/entity/mob/martellos/action/backstep/start
