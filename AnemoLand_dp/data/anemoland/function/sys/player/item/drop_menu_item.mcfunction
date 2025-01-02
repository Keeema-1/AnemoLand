scoreboard players reset @s dropped.knowledge_book

execute as @e[type=item,distance=..2] if data entity @s Item.components."minecraft:custom_data"{menu:1b} run kill @s
