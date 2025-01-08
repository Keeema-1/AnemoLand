execute store result score #random temp run random value 0..14
execute if score #random temp matches 0..3 run function anemoland_contents:sys/entity/mob/martellos/action/turn/start
execute if score #random temp matches 4..4 run function anemoland_contents:sys/entity/mob/martellos/action/knock/start
execute if score #random temp matches 5..7 run function anemoland_contents:sys/entity/mob/martellos/action/spin/start
execute if score #random temp matches 8..9 run function anemoland_contents:sys/entity/mob/martellos/action/spin_dirt/start
execute if score #random temp matches 10..12 run function anemoland_contents:sys/entity/mob/martellos/action/knock_tail/start
execute if score #random temp matches 13..14 run function anemoland_contents:sys/entity/mob/martellos/action/backstep/start
