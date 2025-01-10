
execute if entity @s[tag=!noticed] run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/bark/start

execute if entity @s[tag=angry] unless score @s anger.time matches 1.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/tired/start

execute if score @s action0 matches 0 if score @s anger.damage matches ..0 unless score @s anger.time matches 1.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/angry/start

execute if score @s action0 matches 0 run function anemoland_contents:sys/entity/mob/muscleroom/tick/choose_action/any/0

# execute if score @s action0 matches 0 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/jump/start
# execute if score @s action0 matches 0 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/punch/start
# execute if score @s action0 matches 0 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_circle/start
# execute if score @s action0 matches 0 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_line/start
execute if score @s action0 matches 0 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_target/start
