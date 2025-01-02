execute unless data storage temp:_ data.player_data.Inventory[{Slot:9b,components:{"minecraft:custom_data":{menu:1b}}}] unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/main/update
execute unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{menu:1b}}}] if function anemoland:sys/player/menu/main/click/to_pet run return 1
execute unless data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{menu:1b}}}] if function anemoland:sys/player/menu/main/click/to_armor run return 1
execute unless data storage temp:_ data.player_data.Inventory[{Slot:13b,components:{"minecraft:custom_data":{menu:1b}}}] if function anemoland:sys/player/menu/main/click/to_team run return 1
execute unless data storage temp:_ data.player_data.Inventory[{Slot:16b,components:{"minecraft:custom_data":{menu:1b}}}] if function anemoland:sys/player/menu/main/click/to_tp run return 1
execute unless data storage temp:_ data.player_data.Inventory[{Slot:17b,components:{"minecraft:custom_data":{menu:1b}}}] if function anemoland:sys/player/menu/main/click/to_setting run return 1

# tellraw @a {"storage":"temp:_","nbt": "data.Inventory"}
function anemoland:sys/player/menu/main/update
