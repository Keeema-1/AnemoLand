scoreboard players reset @s used.carrot_on_a_stick

# summon
execute if score @s area2 matches 1.. if data storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data"{"item_type":"pet","is_boss":1b} run function anemoland:sys/player/item/action/summon/0

# summon
execute if score @s area2 matches 1.. if data storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data"{"item_type":"tool","tool_type":"fishing_rod"} if entity @e[type=marker,tag=fishing_area,distance=..64] run function anemoland:sys/player/item/action/fishing/0
