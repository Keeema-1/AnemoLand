scoreboard players set @s action_time 295
execute if predicate rpg:random_chance/0_5 run scoreboard players remove @s action_time 5
execute if predicate rpg:random_chance/0_5 run scoreboard players remove @s action_time 5
tag @s add ignited
