
execute if data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{item_type:"armor","part":"helmet"}}}] run data modify storage temp:_ data.player_storage.equipments.armor1.head set from storage temp:_ data.player_data.Inventory[{Slot:10b}]
execute unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{item_type:"armor","part":"helmet"}}}] run data modify storage temp:_ data.player_storage.equipments.armor1.head set value {}

execute if data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{item_type:"armor","part":"chestplate"}}}] run data modify storage temp:_ data.player_storage.equipments.armor1.chest set from storage temp:_ data.player_data.Inventory[{Slot:11b}]
execute unless data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{item_type:"armor","part":"chestplate"}}}] run data modify storage temp:_ data.player_storage.equipments.armor1.chest set value {}

execute if data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{item_type:"armor","part":"leggings"}}}] run data modify storage temp:_ data.player_storage.equipments.armor1.legs set from storage temp:_ data.player_data.Inventory[{Slot:12b}]
execute unless data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{item_type:"armor","part":"leggings"}}}] run data modify storage temp:_ data.player_storage.equipments.armor1.legs set value {}

execute if data storage temp:_ data.player_data.Inventory[{Slot:13b,components:{"minecraft:custom_data":{item_type:"armor","part":"boots"}}}] run data modify storage temp:_ data.player_storage.equipments.armor1.feet set from storage temp:_ data.player_data.Inventory[{Slot:13b}]
execute unless data storage temp:_ data.player_data.Inventory[{Slot:13b,components:{"minecraft:custom_data":{item_type:"armor","part":"boots"}}}] run data modify storage temp:_ data.player_storage.equipments.armor1.feet set value {}
