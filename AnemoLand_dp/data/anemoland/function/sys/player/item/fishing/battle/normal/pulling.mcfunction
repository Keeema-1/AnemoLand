
execute if score @s level matches 1 at @s facing entity @p[tag=player_check] eyes rotated ~ 0 run tp ^ ^ ^0.06
execute if score @s level matches 2 at @s facing entity @p[tag=player_check] eyes rotated ~ 0 run tp ^ ^ ^0.04

execute as @p[tag=player_check] at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 1 1

execute if entity @e[type=marker,tag=fishing_spot,distance=..8] run return run function anemoland:sys/player/item/fishing/battle/success
