
execute if score @s damage_motion_timer matches 1.. run scoreboard players remove @s damage_motion_timer 1

execute if score @s damage_motion_timer matches 0 run function anemoland:sys/player/state/damage/00
