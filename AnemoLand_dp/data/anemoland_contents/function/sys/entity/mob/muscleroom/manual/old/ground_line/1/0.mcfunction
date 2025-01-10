
execute at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches ..40 as @a[distance=..64] at @s run playsound minecraft:block.basalt.break hostile @s ~ ~ ~ 0.5 0

execute if score @s action_time matches 1 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_line/1/summon1
execute if score @s action_time matches 6 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_line/1/summon2
execute if score @s action_time matches 11 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_line/1/summon3
execute if score @s action_time matches 16 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_line/1/summon4

execute if score @s action_time matches 36 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0
execute if score @s action_time matches 41 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0
execute if score @s action_time matches 46 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0
execute if score @s action_time matches 51 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0

execute if score @s action_time matches 80 run function anemoland_contents:sys/entity/mob/muscleroom/animation/ground2
execute if entity @s[tag=angry] if score @s action_time matches 10 run function anemoland_contents:sys/entity/mob/muscleroom/animation/ground2

execute if score @s action_time matches 120.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_line/1/end
execute if entity @s[tag=angry] if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_line/1/end
execute if predicate anemoland:random_chance/0_5 if entity @s[tag=angry] if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_line/1/end