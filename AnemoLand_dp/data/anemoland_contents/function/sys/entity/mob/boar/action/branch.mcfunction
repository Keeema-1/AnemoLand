execute unless score @s action0 matches 1.. run function anemoland_contents:sys/entity/mob/boar/action/stop/tick
execute if score @s action0 matches 1 run function anemoland_contents:sys/entity/mob/boar/action/target/tick
execute if score @s action0 matches 2 run function anemoland_contents:sys/entity/mob/boar/action/tackle/tick
