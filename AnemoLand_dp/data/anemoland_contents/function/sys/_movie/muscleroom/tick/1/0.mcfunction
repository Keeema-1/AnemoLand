
execute if score @s action_time matches ..20 as @e[type=armor_stand,tag=movie.muscleroom,distance=..64] run tp @s ~-2 ~3 ~4 210 10

execute if score @s action_time matches 21.. as @e[type=armor_stand,tag=movie.muscleroom,distance=..64] run tp @s ~2 ~6 ~8 160 30

execute if score #movie.muscleroom action_time matches 41 at @e[tag=aj.muscleroom.root,distance=..64] positioned ~ ~-3.5 ~ run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_circle/1/summon1
execute if score #movie.muscleroom action_time matches 46 at @e[tag=aj.muscleroom.root,distance=..64] positioned ~ ~-3.5 ~ run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_circle/1/summon2
execute if score #movie.muscleroom action_time matches 51 at @e[tag=aj.muscleroom.root,distance=..64] positioned ~ ~-3.5 ~ run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_circle/1/summon3
execute if score #movie.muscleroom action_time matches 56 at @e[tag=aj.muscleroom.root,distance=..64] positioned ~ ~-3.5 ~ run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_circle/1/summon4

execute if score @s action_time matches 20.. as @a[distance=..64] at @s run playsound minecraft:block.basalt.break hostile @s ~ ~ ~ 0.5 0

execute if score #movie.muscleroom action_time matches 60.. run function anemoland_contents:sys/movie/muscleroom/manual/tick/2/start
