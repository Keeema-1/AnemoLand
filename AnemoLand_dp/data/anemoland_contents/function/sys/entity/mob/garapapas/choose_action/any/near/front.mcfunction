execute store result score #random temp run random value 0..15
execute if score #random temp matches 0..3 run function anemoland_contents:sys/entity/mob/garapapas/action/bite/start
execute if score #random temp matches 4..5 run function anemoland_contents:sys/entity/mob/garapapas/action/bite_side/start
execute if score #random temp matches 6..9 run function anemoland_contents:sys/entity/mob/garapapas/action/dive/start
execute if score #random temp matches 10..13 run function anemoland_contents:sys/entity/mob/garapapas/action/tail_side/start
execute if score #random temp matches 14..15 run function anemoland_contents:sys/entity/mob/garapapas/action/water_front/start
