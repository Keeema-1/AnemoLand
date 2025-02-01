
# 失敗
    execute unless score @s action_time matches 0.. if entity @p[tag=player_check,tag=using_item] run return run function anemoland:sys/player/item/fishing/end_as_bobber

# 成功
    execute if score @s action_time matches 0.. if entity @p[tag=player_check,tag=using_item] run function anemoland:sys/player/item/fishing/waiting/success/0

execute if score @s action_time matches 0.. run scoreboard players remove @s action_time 1
execute if score @s action_time matches -1 run scoreboard players reset @s action_time

execute unless score @s action_time matches 0.. at @s run tp ~ 0 ~

execute if predicate anemoland:random_chance/0_02 unless score @s action_time matches 0.. at @s run function anemoland:sys/player/item/fishing/waiting/chance/0
