execute store result score #random temp run random value 0..12
execute if score #random temp matches 0..0 run function anemoland_contents:sys/entity/mob/bagikeros/action/walk/start
execute if score #random temp matches 1..2 run function anemoland_contents:sys/entity/mob/bagikeros/action/bite/start
execute if score #random temp matches 3..4 run function anemoland_contents:sys/entity/mob/bagikeros/action/dive/start
execute if score #random temp matches 5..6 run function anemoland_contents:sys/entity/mob/bagikeros/action/shake_head/start
execute if score #random temp matches 7..8 run function anemoland_contents:sys/entity/mob/bagikeros/action/shake_tail/start
execute if score #random temp matches 9..10 run function anemoland_contents:sys/entity/mob/bagikeros/action/shake_walk/start
execute if score #random temp matches 11..12 run function anemoland_contents:sys/entity/mob/bagikeros/action/bite_side/start
