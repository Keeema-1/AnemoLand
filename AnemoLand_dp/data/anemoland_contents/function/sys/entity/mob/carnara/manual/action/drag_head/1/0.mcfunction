tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 20..40 as @a[distance=..64] at @s run playsound minecraft:block.snow.break hostile @s ~ ~ ~ 3 1
execute if score @s action_time matches 20..40 as @a[distance=..64] at @s run playsound minecraft:block.glass.break hostile @s ~ ~ ~ 0.2 0.5

execute if score @s action_time matches 20..40 run function anemoland_contents:sys/entity/mob/carnara/manual/action/drag_head/1/particle

execute if score @s action_time matches 20..40 run function anemoland_contents:sys/entity/mob/carnara/attack/head1/0

execute if score @s action_time matches 160.. run function anemoland_contents:sys/entity/mob/carnara/action/dive/end
