
function anemoland:sys/player/item/fishing/battle/normal/actionbar

particle block{block_state:{Name:"ice"}} ~ 0 ~ 0.1 0 0.1 1 1
execute at @s run particle minecraft:splash ~ ~ ~ 0 0 0 1 1
# execute at @s run particle bubble ~ ~ ~ 0.1 0.1 0.1 0.1 1
execute if predicate anemoland:random_chance/0_2 as @p[tag=player_check] at @s run playsound minecraft:entity.fish.swim master @s ~ ~ ~ 0.2 1.2
execute if predicate anemoland:random_chance/0_2 as @p[tag=player_check] at @s run playsound minecraft:entity.generic.swim master @s ~ ~ ~ 0.2 1.2

execute unless score @s action_time matches 1.. run return run function anemoland:sys/player/item/fishing/battle/pulled/start

execute if score @s action1 matches 1 facing entity @e[type=marker,tag=fishing_area,distance=..32,limit=1] eyes rotated ~90 0 run tp ^ ^ ^0.2
execute if score @s action1 matches 2 facing entity @e[type=marker,tag=fishing_area,distance=..32,limit=1] eyes rotated ~-90 0 run tp ^ ^ ^0.2

execute if score @p[tag=player_check] action_time matches 1.. run function anemoland:sys/player/item/fishing/battle/normal/pulling

# execute if predicate anemoland:random_chance/0_02 run function anemoland:sys/player/item/fishing/fishing/on_water/big/pulled/start
