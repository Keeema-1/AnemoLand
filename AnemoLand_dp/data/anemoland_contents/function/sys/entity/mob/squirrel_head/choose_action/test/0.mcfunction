execute store result score #random temp run random value 0..17
execute if score #random temp matches 0..5 run function anemoland_contents:sys/entity/mob/squirrel_head/action/walk/start
execute if score #random temp matches 6..7 run function anemoland_contents:sys/entity/mob/squirrel_head/action/bite/start
execute if score #random temp matches 8..9 run function anemoland_contents:sys/entity/mob/squirrel_head/action/spin/start
execute if score #random temp matches 10..11 run function anemoland_contents:sys/entity/mob/squirrel_head/action/bite_side/start
execute if score #random temp matches 12..13 run function anemoland_contents:sys/entity/mob/squirrel_head/action/tackle_side/start
execute if score #random temp matches 14..15 run function anemoland_contents:sys/entity/mob/squirrel_head/action/knock_tail/start
execute if score #random temp matches 16..17 run function anemoland_contents:sys/entity/mob/squirrel_head/action/spin_jump/start
