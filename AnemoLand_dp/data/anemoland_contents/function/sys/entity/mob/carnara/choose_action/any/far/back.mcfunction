execute store result score #random temp run random value 0..21
execute if score #random temp matches 0..1 run function anemoland_contents:sys/entity/mob/carnara/action/tail_spear/start
execute if score #random temp matches 2..3 run function anemoland_contents:sys/entity/mob/carnara/action/drag_tail/start
execute if score #random temp matches 4..5 run function anemoland_contents:sys/entity/mob/carnara/action/beam_high/start
execute if score #random temp matches 6..11 run function anemoland_contents:sys/entity/mob/carnara/action/turn/start
execute if score #random temp matches 12..17 run function anemoland_contents:sys/entity/mob/carnara/action/beam_turn/start
execute if score #random temp matches 18..21 run function anemoland_contents:sys/entity/mob/carnara/action/walk/start
