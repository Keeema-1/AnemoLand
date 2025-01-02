execute unless data storage temp:_ data.player_data.Inventory[{Slot:9b,components:{"minecraft:custom_data":{menu:1b}}}] if function anemoland:sys/player/menu/pet/main/click/0 run return 1

execute if score @s area2 matches 1.. run function anemoland:sys/player/menu/pet/main/0_field
execute unless score @s area2 matches 1.. run function anemoland:sys/player/menu/pet/main/0_village

function anemoland:sys/player/menu/pet/main/update
