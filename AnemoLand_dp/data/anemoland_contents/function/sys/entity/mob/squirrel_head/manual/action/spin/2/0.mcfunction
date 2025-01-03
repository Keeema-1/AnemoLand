tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 30.. if entity @s[tag=angry] run return run function anemoland_contents:sys/entity/mob/squirrel_head/action/spin/end

execute if score @s action_time matches 40.. run return run function anemoland_contents:sys/entity/mob/squirrel_head/action/spin/end
