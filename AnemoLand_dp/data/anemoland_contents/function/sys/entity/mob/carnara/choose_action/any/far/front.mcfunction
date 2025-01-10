execute store result score #random temp run random value 0..14
execute if score #random temp matches 0..1 run function anemoland_contents:sys/entity/mob/carnara/action/dive/start
execute if score #random temp matches 2..2 run function anemoland_contents:sys/entity/mob/carnara/action/drag_head/start
execute if score #random temp matches 3..5 run function anemoland_contents:sys/entity/mob/carnara/action/beam/start
execute if score #random temp matches 6..7 run function anemoland_contents:sys/entity/mob/carnara/action/tail_spear/start
execute if score #random temp matches 8..9 run function anemoland_contents:sys/entity/mob/carnara/action/beam_high/start
execute if score #random temp matches 10..14 run function anemoland_contents:sys/entity/mob/carnara/action/walk/start
