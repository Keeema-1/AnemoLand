tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 20.. if entity @s[tag=angry] run scoreboard players set @s action_time 1000

execute if score @s action_time matches 30.. run function anemoland_contents:sys/entity/mob/martellos/tick/action/12_spin/end

# function anemoland_contents:sys/entity/mob/martellos/animation/default