
scoreboard players reset #fishing.looking temp
tag @s add me
execute as @p[tag=player_check] at @s rotated ~ 0 positioned ^ ^ ^-0.1 facing entity @e[type=text_display,tag=me,distance=..32,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.025] run scoreboard players set #fishing.looking temp 1
tag @s remove me

execute if score @p[tag=player_check] action_time matches 1.. run function anemoland:sys/player/item/fishing/battle/pulled/actionbar_pulling
execute unless score @p[tag=player_check] action_time matches 1.. if score #fishing.looking temp matches 1 run function anemoland:sys/player/item/fishing/battle/pulled/actionbar
execute unless score @p[tag=player_check] action_time matches 1.. unless score #fishing.looking temp matches 1 run function anemoland:sys/player/item/fishing/battle/pulled/actionbar_pulling

particle block{block_state:{Name:"ice"}} ~ 0 ~ 0.1 0 0.1 1 1
particle block{block_state:{Name:"light_blue_concrete"}} ~ 0 ~ 0.1 0 0.1 1 1
particle block{block_state:{Name:"white_concrete"}} ~ 0 ~ 0.1 0 0.1 1 1
# particle block{block_state:{Name:"white_wool"}} ~ 0 ~ 0.1 0 0.1 1 1

execute at @s run particle minecraft:splash ~ 0 ~ 0 0 0 1 1
execute at @s run particle bubble ~ 0 ~ 0.2 0.2 0.2 0.3 5
execute as @p[tag=player_check] at @s run playsound minecraft:entity.fish.swim master @s ~ ~ ~ 0.3 1.2
execute as @p[tag=player_check] at @s run playsound minecraft:entity.generic.swim master @s ~ ~ ~ 0.3 1.2

execute if score @s action1 matches 1 facing entity @e[type=marker,tag=fishing_area,distance=..32,limit=1] eyes rotated ~90 0 run tp ^ ^ ^0.2
execute if score @s action1 matches 2 facing entity @e[type=marker,tag=fishing_area,distance=..32,limit=1] eyes rotated ~-90 0 run tp ^ ^ ^0.2

execute if predicate anemoland:random_chance/0_2 at @s run tp ~ -0.52 ~
execute if predicate anemoland:random_chance/0_2 at @s run tp ~ -0.48 ~

execute unless score @s action_time matches 1.. run return run function anemoland:sys/player/item/fishing/battle/normal/start
# execute if predicate anemoland:random_chance/0_02 run function anemoland:sys/player/item/fishing/fishing/on_water/big/normal/start

execute unless score #fishing.looking temp matches 1.. run function anemoland:sys/player/item/fishing/battle/pulled/not_looking
execute if score @p[tag=player_check] action_time matches 0 on passengers run data merge entity @s {Glowing:0b}
execute if score @p[tag=player_check] action_time matches 1.. run function anemoland:sys/player/item/fishing/battle/pulled/pulling

execute unless score @s health matches 1.. run return run function anemoland:sys/player/item/fishing/battle/fail
