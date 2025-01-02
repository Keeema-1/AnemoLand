
execute unless score @s action_time matches 0.. if score @p[tag=player_check] action_time matches 4 run return run function anemoland:sys/player/item/fishing/end_as_bobber

execute if score @s action_time matches 0.. if score @p[tag=player_check] action_time matches 4 run function anemoland:sys/player/item/fishing/waiting/success/0
execute if score @s action_time matches 0.. run scoreboard players remove @s action_time 1
execute if score @s action_time matches -1 run scoreboard players reset @s action_time

execute unless score @s action_time matches 0.. at @s run tp ~ 0 ~

execute if predicate anemoland:random_chance/0_02 unless score @s action_time matches 0.. at @s run function anemoland:sys/player/item/fishing/waiting/chance/0
