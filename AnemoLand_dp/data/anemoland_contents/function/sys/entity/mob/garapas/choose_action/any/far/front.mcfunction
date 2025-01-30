execute store result score #random temp run random value 0..6
execute if score #random temp matches 0..4 run function anemoland_contents:sys/entity/mob/garapas/action/walk/start
execute if score #random temp matches 5..5 run function anemoland_contents:sys/entity/mob/garapas/action/bite/start
execute if score #random temp matches 6..6 run function anemoland_contents:sys/entity/mob/garapas/action/water_front/start
