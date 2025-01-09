execute store result score #random temp run random value 0..11
execute if score #random temp matches 0..1 run function anemoland_contents:sys/entity/mob/garapapas/action/bite_side/start
execute if score #random temp matches 2..2 run function anemoland_contents:sys/entity/mob/garapapas/action/dive/start
execute if score #random temp matches 3..3 run function anemoland_contents:sys/entity/mob/garapapas/action/tail_side/start
execute if score #random temp matches 4..11 run function anemoland_contents:sys/entity/mob/garapapas/action/walk/start
