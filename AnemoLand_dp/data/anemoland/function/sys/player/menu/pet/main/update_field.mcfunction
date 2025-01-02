execute unless data storage temp:_ data.player_storage.pet.1.count run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=4,item_name='{"text":"スロット1","color":"white"}']
execute unless data storage temp:_ data.player_storage.pet.2.count run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=4,item_name='{"text":"スロット2","color":"white"}']
execute unless data storage temp:_ data.player_storage.pet.3.count run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=4,item_name='{"text":"スロット3","color":"white"}']

data modify storage temp:_ data.pet_item set from storage temp:_ data.player_storage.pet.1
data modify storage temp:_ data.pet_item.components."minecraft:custom_data" set value {menu:1b}
data modify storage temp:_ data.pet_item.components."minecraft:lore" append value '{"text":""}'
data modify storage temp:_ data.pet_item.components."minecraft:lore" append value '{"text":"※拠点やマップでのみ入れ替えが可能です","italic":false,"color":"red"}'
execute if data storage temp:_ data.player_storage.pet.1.count positioned ~ -30 ~ summon armor_stand run function anemoland:sys/player/menu/pet/main/set_pet1_item

data modify storage temp:_ data.pet_item set from storage temp:_ data.player_storage.pet.2
data modify storage temp:_ data.pet_item.components."minecraft:custom_data" set value {menu:1b}
data modify storage temp:_ data.pet_item.components."minecraft:lore" append value '{"text":""}'
data modify storage temp:_ data.pet_item.components."minecraft:lore" append value '{"text":"※拠点やマップでのみ入れ替えが可能です","italic":false,"color":"red"}'
execute if data storage temp:_ data.player_storage.pet.2.count positioned ~ -30 ~ summon armor_stand run function anemoland:sys/player/menu/pet/main/set_pet2_item

data modify storage temp:_ data.pet_item set from storage temp:_ data.player_storage.pet.3
data modify storage temp:_ data.pet_item.components."minecraft:custom_data" set value {menu:1b}
data modify storage temp:_ data.pet_item.components."minecraft:lore" append value '{"text":""}'
data modify storage temp:_ data.pet_item.components."minecraft:lore" append value '{"text":"※拠点やマップでのみ入れ替えが可能です","italic":false,"color":"red"}'
execute if data storage temp:_ data.player_storage.pet.3.count positioned ~ -30 ~ summon armor_stand run function anemoland:sys/player/menu/pet/main/set_pet3_item
