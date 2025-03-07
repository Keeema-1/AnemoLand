clear @s #anemoland:menu1[custom_data={menu:1b}]

item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/back",item_name='{"text":"戻る","color":"white"}']
item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/transparent",hide_tooltip={}]
item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/transparent",hide_tooltip={}]
item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/transparent",hide_tooltip={}]
# 7
    item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/transparent",hide_tooltip={}]
    execute if data storage temp:_ data.player_storage.supporters.1{id:"sally"} run item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/girl1_head",item_name='{"translate":"anemoland.talker.sally.name","italic":false}',lore=['{"text":"  助っ人","italic":false,"color":"aqua"}']]
    execute if data storage temp:_ data.player_storage.supporters.1{id:"boy1"} run item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/boy1_head",item_name='{"translate":"anemoland.talker.boy1.name","italic":false}',lore=['{"text":"  助っ人","italic":false,"color":"aqua"}']]

item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/team",item_name='{"text":"助っ人を選択"}',lore=['{"text":""}','{"text":"  クリア済みのフィールドでは選択した","color":"gray","italic":false}','{"text":"  助っ人が一緒に戦います。","color":"gray","italic":false}','{"text":""}','{"text":"  敵のレベルに応じて助っ人のレベルも","color":"gray","italic":false}','{"text":"  変動します。","color":"gray","italic":false}']]

execute if entity @s[tag=in_battle_field] run function anemoland:sys/player/menu/pet/main/reset_field

execute if entity @s[tag=!in_battle_field] run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/inventory_color",item_name='{"text":"ペットスロット1","color":"white"}']
execute if entity @s[tag=!in_battle_field] run data modify storage temp:_ data.pet_item set from storage temp:_ data.player_storage.pet.1
execute if entity @s[tag=!in_battle_field] run execute if data storage temp:_ data.player_storage.pet.1.count positioned ~ -100 ~ summon zombie run function anemoland:sys/player/menu/pet/main/set_pet1_item

execute if entity @s[tag=!in_battle_field] run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/inventory_color",item_name='{"text":"ペットスロット2","color":"white"}']
execute if entity @s[tag=!in_battle_field] run data modify storage temp:_ data.pet_item set from storage temp:_ data.player_storage.pet.2
execute if entity @s[tag=!in_battle_field] run execute if data storage temp:_ data.player_storage.pet.2.count positioned ~ -100 ~ summon zombie run function anemoland:sys/player/menu/pet/main/set_pet2_item

execute if entity @s[tag=!in_battle_field] run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/inventory_color",item_name='{"text":"ペットスロット3","color":"white"}',lore=['{"text":"  このスロットのペットは召喚されませんが、", "color":"yellow","italic":false}','{"text":"  経験値を獲得することができます。", "color":"yellow","italic":false}']]
execute if entity @s[tag=!in_battle_field] run data modify storage temp:_ data.pet_item set from storage temp:_ data.player_storage.pet.3
execute if entity @s[tag=!in_battle_field] run execute if data storage temp:_ data.player_storage.pet.3.count positioned ~ -100 ~ summon zombie run function anemoland:sys/player/menu/pet/main/set_pet3_item
