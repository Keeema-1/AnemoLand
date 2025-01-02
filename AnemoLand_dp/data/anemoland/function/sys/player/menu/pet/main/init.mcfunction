clear @s #anemoland:menu1[custom_data={menu:1b}]

item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},custom_model_data=3,item_name='{"text":"戻る","color":"white"}']
execute unless score @s area2 matches 1.. unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{is_pet:1b,is_boss:0b}}}] run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=4,item_name='{"text":"スロット1","color":"white"}']
execute unless score @s area2 matches 1.. unless data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{is_pet:1b,is_boss:0b}}}] run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=4,item_name='{"text":"スロット2","color":"white"}']
execute unless score @s area2 matches 1.. unless data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{is_pet:1b,is_boss:0b}}}] run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=4,item_name='{"text":"スロット3","color":"white"}']
execute if score @s area2 matches 1.. run function anemoland:sys/player/menu/pet/main/update_field
item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=2,hide_tooltip={}]
item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},custom_model_data=2,hide_tooltip={}]
item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=2,hide_tooltip={}]
item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},custom_model_data=2,hide_tooltip={}]
item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},custom_model_data=2,hide_tooltip={}]

execute unless score @s area2 matches 1.. run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=4,item_name='{"text":"スロット1","color":"white"}']
execute unless score @s area2 matches 1.. run data modify storage temp:_ data.pet_item set from storage temp:_ data.player_storage.pet.1
execute unless score @s area2 matches 1.. run execute if data storage temp:_ data.player_storage.pet.1.count positioned ~ -80 ~ summon zombie run function anemoland:sys/player/menu/pet/main/set_pet1_item

execute unless score @s area2 matches 1.. run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=4,item_name='{"text":"スロット2","color":"white"}']
execute unless score @s area2 matches 1.. run data modify storage temp:_ data.pet_item set from storage temp:_ data.player_storage.pet.2
execute unless score @s area2 matches 1.. run execute if data storage temp:_ data.player_storage.pet.2.count positioned ~ -80 ~ summon zombie run function anemoland:sys/player/menu/pet/main/set_pet2_item

execute unless score @s area2 matches 1.. run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=4,item_name='{"text":"スロット3","color":"white"}',lore=['{"text":"  このスロットのペットは召喚されませんが、", "color":"yellow","italic":false}','{"text":"  経験値を獲得することができます。", "color":"yellow","italic":false}']]
execute unless score @s area2 matches 1.. run data modify storage temp:_ data.pet_item set from storage temp:_ data.player_storage.pet.3
execute unless score @s area2 matches 1.. run execute if data storage temp:_ data.player_storage.pet.3.count positioned ~ -80 ~ summon zombie run function anemoland:sys/player/menu/pet/main/set_pet3_item


execute if score @s area2 matches 1.. run function anemoland:sys/player/menu/pet/main/0_field