
execute at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches ..40 as @a[distance=..64] at @s run playsound minecraft:block.basalt.break hostile @s ~ ~ ~ 0.5 0

execute if score @s action_time matches 1 run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_target/1/summon
execute if score @s action_time matches 6 run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_target/1/summon
execute if score @s action_time matches 11 run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_target/1/summon
execute if score @s action_time matches 16 run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_target/1/summon

execute if score @s action_time matches 80 run function anemoland_contents:sys/entity/mob/muscleroom/animation/ground2
execute if entity @s[tag=angry] if score @s action_time matches 10 run function anemoland_contents:sys/entity/mob/muscleroom/animation/ground2

execute if score @s action_time matches 120.. run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_target/end
execute if entity @s[tag=angry] if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_target/end
execute if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/muscleroom/action/ground_target/end