execute store result score #random temp run random value 0..13
execute if score #random temp matches 0..0 run function anemoland_contents:sys/entity/mob/squirrel_head/action/bite/start
execute if score #random temp matches 1..4 run function anemoland_contents:sys/entity/mob/squirrel_head/action/spin/start
execute if score #random temp matches 5..8 run function anemoland_contents:sys/entity/mob/squirrel_head/action/bite_side/start
execute if score #random temp matches 9..10 run function anemoland_contents:sys/entity/mob/squirrel_head/action/tackle_side/start
execute if score #random temp matches 11..12 run function anemoland_contents:sys/entity/mob/squirrel_head/action/knock_tail/start
execute if score #random temp matches 13..13 run function anemoland_contents:sys/entity/mob/squirrel_head/action/spin_jump/start
