execute unless score @s action0 matches 1.. run function anemoland_contents:sys/entity/mob/walking_mushroom/tick/action/stop/tick
execute if score @s action0 matches 1 run function anemoland_contents:sys/entity/mob/walking_mushroom/tick/action/walk/tick
execute if score @s action0 matches 2 run function anemoland_contents:sys/entity/mob/walking_mushroom/tick/action/attack/tick
