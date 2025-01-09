tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 30.. if entity @s[tag=angry] run scoreboard players set @s action_time 1000

execute if score @s action_time matches 60.. run function rpg:sys/entity/mob/martellos/tick/action/11_knock/end

execute if entity @s[tag=angry] if score @s action_counter matches 2.. if score @s action_time matches 50.. run function rpg:sys/entity/mob/martellos/tick/action/11_knock/end
execute if entity @s[tag=angry] unless score @s action_counter matches 2.. if score @s action_time matches 5.. run function rpg:sys/entity/mob/martellos/tick/action/11_knock/start

# function rpg:sys/entity/mob/martellos/animation/default