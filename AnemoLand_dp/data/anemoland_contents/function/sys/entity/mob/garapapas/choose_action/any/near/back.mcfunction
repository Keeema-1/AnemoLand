execute store result score #random temp run random value 0..8
execute if score #random temp matches 0..0 run function anemoland_contents:sys/entity/mob/garapapas/action/bite/start
execute if score #random temp matches 1..4 run function anemoland_contents:sys/entity/mob/garapapas/action/bite_side/start
execute if score #random temp matches 5..6 run function anemoland_contents:sys/entity/mob/garapapas/action/dive/start
execute if score #random temp matches 7..8 run function anemoland_contents:sys/entity/mob/garapapas/action/tail_side/start
