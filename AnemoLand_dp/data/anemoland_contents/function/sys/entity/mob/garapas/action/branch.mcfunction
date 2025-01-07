execute unless score @s action0 matches 1.. run function anemoland_contents:sys/entity/mob/garapas/action/stop/tick
execute if score @s action0 matches 1 run function anemoland_contents:sys/entity/mob/garapas/action/walk/tick
execute if score @s action0 matches 2 run function anemoland_contents:sys/entity/mob/garapas/action/bite/tick
execute if score @s action0 matches 3 run function anemoland_contents:sys/entity/mob/garapas/action/water_front/tick
execute if score @s action0 matches 4 run function anemoland_contents:sys/entity/mob/garapas/action/keep_distance/tick
