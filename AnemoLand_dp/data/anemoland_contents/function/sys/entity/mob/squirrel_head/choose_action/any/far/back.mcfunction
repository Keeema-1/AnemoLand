execute store result score #random temp run random value 0..15
execute if score #random temp matches 0..7 run function anemoland_contents:sys/entity/mob/squirrel_head/action/walk/start
execute if score #random temp matches 8..9 run function anemoland_contents:sys/entity/mob/squirrel_head/action/tackle_side/start
execute if score #random temp matches 10..12 run function anemoland_contents:sys/entity/mob/squirrel_head/action/knock_tail/start
execute if score #random temp matches 13..15 run function anemoland_contents:sys/entity/mob/squirrel_head/action/spin_jump/start
