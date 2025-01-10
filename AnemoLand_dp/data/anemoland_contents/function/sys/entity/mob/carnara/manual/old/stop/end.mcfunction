
execute if entity @s[tag=!noticed] run function anemoland_contents:sys/entity/mob/carnara/manual/action/bark/start

execute if entity @s[tag=angry] unless score @s anger.time matches 1.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/tired/start

execute if score @s action0 matches 0 if score @s anger.damage matches ..0 unless score @s anger.time matches 1.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/anger/start

execute if score @s action0 matches 0 run function anemoland_contents:sys/entity/mob/carnara/tick/choose_action/any/0
