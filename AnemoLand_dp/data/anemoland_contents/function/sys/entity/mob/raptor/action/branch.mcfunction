execute unless score @s action0 matches 1.. run function anemoland_contents:sys/entity/mob/raptor/action/stop/tick
execute if score @s action0 matches 1 run function anemoland_contents:sys/entity/mob/raptor/action/walk/tick
execute if score @s action0 matches 2 run function anemoland_contents:sys/entity/mob/raptor/action/jump/tick
execute if score @s action0 matches 3 run function anemoland_contents:sys/entity/mob/raptor/action/side_jump/tick
execute if score @s action0 matches 4 run function anemoland_contents:sys/entity/mob/raptor/action/bark/tick
