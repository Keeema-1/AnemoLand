clear @s #anemoland:menu1[custom_data={menu:1b}]

item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/back",item_name='{"text":"戻る","color":"white"}']

execute if entity @s[tag=in_battle_field] run function anemoland:sys/player/menu/pet/main/reset_field
execute if entity @s[tag=!in_battle_field] run function anemoland:sys/player/menu/pet/main/reset_village

item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/transparent",hide_tooltip={}]
item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/transparent",hide_tooltip={}]
item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/transparent",hide_tooltip={}]

# 7
    item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/transparent",hide_tooltip={}]
    execute if data storage temp:_ data.player_storage.supporters.1{id:"sally"} run item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/girl1_head",item_name='{"translate":"anemoland.talker.sally.name","italic":false}',lore=['{"text":"  助っ人","italic":false,"color":"aqua"}']]
    execute if data storage temp:_ data.player_storage.supporters.1{id:"boy1"} run item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/boy1_head",item_name='{"translate":"anemoland.talker.boy1.name","italic":false}',lore=['{"text":"  助っ人","italic":false,"color":"aqua"}']]

item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/team",item_name='{"text":"助っ人を選択"}',lore=['{"text":""}','{"text":"  クリア済みのフィールドでは選択した","color":"gray","italic":false}','{"text":"  助っ人が一緒に戦います。","color":"gray","italic":false}','{"text":""}','{"text":"  敵のレベルに応じて助っ人のレベルも","color":"gray","italic":false}','{"text":"  変動します。","color":"gray","italic":false}']]
