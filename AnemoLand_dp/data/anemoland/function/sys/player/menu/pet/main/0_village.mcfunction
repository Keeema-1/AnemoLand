
execute if data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{is_pet:1b}}}] run data modify storage temp:_ data.player_storage.pet.1 set from storage temp:_ data.player_data.Inventory[{Slot:10b}]
execute unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{is_pet:1b}}}] run data modify storage temp:_ data.player_storage.pet.1 set value {}

execute if data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{is_pet:1b}}}] run data modify storage temp:_ data.player_storage.pet.2 set from storage temp:_ data.player_data.Inventory[{Slot:11b}]
execute unless data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{is_pet:1b}}}] run data modify storage temp:_ data.player_storage.pet.2 set value {}

execute if data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{is_pet:1b}}}] run data modify storage temp:_ data.player_storage.pet.3 set from storage temp:_ data.player_data.Inventory[{Slot:12b}]
execute unless data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{is_pet:1b}}}] run data modify storage temp:_ data.player_storage.pet.3 set value {}
