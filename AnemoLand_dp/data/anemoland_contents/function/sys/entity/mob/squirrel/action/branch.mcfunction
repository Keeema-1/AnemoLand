execute unless score @s action0 matches 1.. run function anemoland_contents:sys/entity/mob/squirrel/action/stop/tick
execute if score @s action0 matches 1 run function anemoland_contents:sys/entity/mob/squirrel/action/walk/tick
execute if score @s action0 matches 2 run function anemoland_contents:sys/entity/mob/squirrel/action/bite/tick
execute if score @s action0 matches 3 run function anemoland_contents:sys/entity/mob/squirrel/action/spin/tick
