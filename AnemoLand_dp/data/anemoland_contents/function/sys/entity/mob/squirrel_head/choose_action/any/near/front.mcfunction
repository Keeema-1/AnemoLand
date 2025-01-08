execute store result score #random temp run random value 0..13
execute if score #random temp matches 0..3 run function anemoland_contents:sys/entity/mob/squirrel_head/action/bite/start
execute if score #random temp matches 4..7 run function anemoland_contents:sys/entity/mob/squirrel_head/action/spin/start
execute if score #random temp matches 8..9 run function anemoland_contents:sys/entity/mob/squirrel_head/action/bite_side/start
execute if score #random temp matches 10..11 run function anemoland_contents:sys/entity/mob/squirrel_head/action/tackle_side/start
execute if score #random temp matches 12..13 run function anemoland_contents:sys/entity/mob/squirrel_head/action/knock_tail/start
