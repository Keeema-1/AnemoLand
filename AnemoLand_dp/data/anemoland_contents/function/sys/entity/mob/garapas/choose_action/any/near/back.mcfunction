execute store result score #random temp run random value 0..1
execute if score #random temp matches 0..0 run function anemoland_contents:sys/entity/mob/garapas/action/bite/start
execute if score #random temp matches 1..1 run function anemoland_contents:sys/entity/mob/garapas/action/water_front/start
