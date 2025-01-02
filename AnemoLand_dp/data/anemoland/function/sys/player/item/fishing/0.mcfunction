execute if score @s action_time matches 0.. run scoreboard players remove @s action_time 1
execute unless score @s action0 matches 0.. if score @s action_time matches 4 run function anemoland:sys/player/item/fishing/start

scoreboard players operation #player_id temp = @s player_id

execute unless data storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data"{"item_type":"tool","tool_type":"fishing_rod"} run return run function anemoland:sys/player/item/fishing/end

execute as @e[type=text_display,tag=fishing_bobber,distance=..32] if score @s player_id = #player_id temp at @s run return run function anemoland:sys/player/item/fishing/00

function anemoland:sys/player/item/fishing/end
