execute unless score @s action0 matches 1.. run function anemoland_contents:sys/entity/mob/king_boar/action/stop/tick
execute if score @s action0 matches 1 run function anemoland_contents:sys/entity/mob/king_boar/action/bark/tick
execute if score @s action0 matches 11 run function anemoland_contents:sys/entity/mob/king_boar/action/target/tick
execute if score @s action0 matches 12 run function anemoland_contents:sys/entity/mob/king_boar/action/tackle/tick
execute if score @s action0 matches 13 run function anemoland_contents:sys/entity/mob/king_boar/action/dive/tick
