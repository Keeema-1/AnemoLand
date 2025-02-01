
execute if predicate anemoland:random_chance/0_5 run scoreboard players remove @s health 1
execute if predicate anemoland:random_chance/0_5 run scoreboard players remove @s health 1

execute facing entity @p[tag=player_check] eyes rotated ~ 0 run tp ^ ^ ^0.02

execute as @p[tag=player_check] at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 2 0.5
# execute as @p[tag=player_check] at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 1 1

execute on passengers run data merge entity @s {glow_color_override:16711680,Glowing:1b}

execute if entity @e[type=marker,tag=fishing_spot,distance=..8] run return run function anemoland:sys/player/item/fishing/battle/success
