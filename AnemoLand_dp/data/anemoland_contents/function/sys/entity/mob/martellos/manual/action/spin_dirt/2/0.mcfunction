tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 20.. if entity @s[tag=angry] run return run function anemoland_contents:sys/entity/mob/martellos/action/spin_dirt/end

execute if score @s action_time matches 30.. run return run function anemoland_contents:sys/entity/mob/martellos/action/spin_dirt/end
