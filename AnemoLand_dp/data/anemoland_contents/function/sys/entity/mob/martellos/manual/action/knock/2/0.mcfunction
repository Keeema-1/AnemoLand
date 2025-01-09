tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 60.. run return run function anemoland_contents:sys/entity/mob/martellos/action/knock/end

execute if entity @s[tag=angry] if score @s action_counter matches 2.. if score @s action_time matches 50.. run return run function anemoland_contents:sys/entity/mob/martellos/action/knock/end
execute if entity @s[tag=angry] unless score @s action_counter matches 2.. if score @s action_time matches 5.. run return run function anemoland_contents:sys/entity/mob/martellos/action/knock/start
