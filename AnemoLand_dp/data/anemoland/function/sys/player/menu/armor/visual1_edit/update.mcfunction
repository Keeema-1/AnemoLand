clear @s #anemoland:menu1[custom_data={menu:1b}]
function anemoland:sys/player/menu/common/drop_item/0
execute unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{item_type:"armor","part":"helmet"}}}] run function anemoland:sys/player/menu/common/drop_item/1
function anemoland:sys/player/menu/common/drop_item/2
execute unless data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{item_type:"armor","part":"chestplate"}}}] run function anemoland:sys/player/menu/common/drop_item/3
function anemoland:sys/player/menu/common/drop_item/4
execute unless data storage temp:_ data.player_data.Inventory[{Slot:14b,components:{"minecraft:custom_data":{item_type:"armor","part":"leggings"}}}] run function anemoland:sys/player/menu/common/drop_item/5
function anemoland:sys/player/menu/common/drop_item/6
execute unless data storage temp:_ data.player_data.Inventory[{Slot:16b,components:{"minecraft:custom_data":{item_type:"armor","part":"boots"}}}] run function anemoland:sys/player/menu/common/drop_item/7
function anemoland:sys/player/menu/common/drop_item/8

item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},custom_model_data=3,item_name='{"text":"戻る","color":"white"}']

execute unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{item_type:"armor","part":"helmet"}}}] run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=114,item_name='{"text":"頭装備スロット","color":"white"}']
execute unless data storage temp:_ data.player_storage.equipments.armor_visuality{head:0b} run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=35,item_name='{"text":"頭装備：表示","color":"aqua"}']
execute if data storage temp:_ data.player_storage.equipments.armor_visuality{head:0b} run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=33,item_name='{"text":"頭装備：非表示","color":"aqua"}']

execute unless data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{item_type:"armor","part":"chestplate"}}}] run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=115,item_name='{"text":"胴装備スロット","color":"white"}']
execute unless data storage temp:_ data.player_storage.equipments.armor_visuality{chest:0b} run item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=35,item_name='{"text":"胴装備：表示","color":"aqua"}']
execute if data storage temp:_ data.player_storage.equipments.armor_visuality{chest:0b} run item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=33,item_name='{"text":"胴装備：非表示","color":"aqua"}']

execute unless data storage temp:_ data.player_data.Inventory[{Slot:14b,components:{"minecraft:custom_data":{item_type:"armor","part":"leggings"}}}] run item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},custom_model_data=116,item_name='{"text":"腰装備スロット","color":"white"}']
execute unless data storage temp:_ data.player_storage.equipments.armor_visuality{legs:0b} run item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=35,item_name='{"text":"腰装備：表示","color":"aqua"}']
execute if data storage temp:_ data.player_storage.equipments.armor_visuality{legs:0b} run item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=33,item_name='{"text":"腰装備：非表示","color":"aqua"}']

execute unless data storage temp:_ data.player_data.Inventory[{Slot:16b,components:{"minecraft:custom_data":{item_type:"armor","part":"boots"}}}] run item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},custom_model_data=117,item_name='{"text":"脚装備スロット","color":"white"}']
execute unless data storage temp:_ data.player_storage.equipments.armor_visuality{feet:0b} run item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},custom_model_data=35,item_name='{"text":"脚装備：表示","color":"aqua"}']
execute if data storage temp:_ data.player_storage.equipments.armor_visuality{feet:0b} run item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},custom_model_data=33,item_name='{"text":"脚装備：非表示","color":"aqua"}']

function anemoland:sys/player/menu/armor/visual1_edit/update_storage/0

function anemoland:sys/player/menu/armor_update/force
