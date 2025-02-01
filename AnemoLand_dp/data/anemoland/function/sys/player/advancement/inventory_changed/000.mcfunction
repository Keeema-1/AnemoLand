
execute if block ~ ~ ~ ender_chest if items entity @s enderchest.* *[custom_data~{menu:1b}] run function anemoland:sys/player/advancement/inventory_changed/000_ender_chest
execute unless block ~ ~ ~ ender_chest run data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{menu:1b}}}]
