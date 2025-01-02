
title @p[tag=player_check] actionbar {"text":"大物ヒット！","color":"yellow"}

particle block{block_state:{Name:"ice"}} ~ 0 ~ 0.1 0 0.1 1 1
particle block{block_state:{Name:"light_blue_concrete"}} ~ 0 ~ 0.1 0 0.1 1 1
particle block{block_state:{Name:"white_concrete"}} ~ 0 ~ 0.1 0 0.1 1 1
# particle block{block_state:{Name:"white_wool"}} ~ 0 ~ 0.1 0 0.1 1 1

execute at @s run particle minecraft:splash ~ 0 ~ 0 0 0 1 1
execute at @s run particle bubble ~ 0 ~ 0.2 0.2 0.2 0.3 5
execute if predicate anemoland:random_chance/0_5 as @p[tag=player_check] at @s run playsound minecraft:entity.fish.swim master @s ~ ~ ~ 0.3 1.2
execute if predicate anemoland:random_chance/0_5 as @p[tag=player_check] at @s run playsound minecraft:entity.generic.swim master @s ~ ~ ~ 0.3 1.2

execute unless score @s action_time matches 1.. run function anemoland:sys/player/item/fishing/battle/normal/start
