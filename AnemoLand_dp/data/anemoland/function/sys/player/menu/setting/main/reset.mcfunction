clear @s #anemoland:menu1[custom_data={menu:1b}]
item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},custom_model_data=3,item_name='{"text":"戻る","color":"white"}']

execute unless data storage temp:_ data.player_storage.settings{movie_camera_is_near:1b} run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},item_model="minecraft:spyglass",item_name='{"text":"ムービー再生時のカメラ距離"}',lore=['{"text":" 【プレイヤー別設定】","italic":false,"color":"white"}','{"text":"    一人称視点用 (遠い)","italic":false,"color":"aqua"}']]
execute if data storage temp:_ data.player_storage.settings{movie_camera_is_near:1b} run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},item_model="minecraft:spyglass",item_name='{"text":"ムービー再生時のカメラ距離"}',lore=['{"text":" 【プレイヤー別設定】","italic":false,"color":"white"}','{"text":"    三人称視点用 (近い)","italic":false,"color":"aqua"}']]

execute unless data storage temp:_ data.player_storage.settings{movie_frame:0b} run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},item_model="minecraft:spyglass",item_name='{"text":"ムービーフレーム"}',lore=['{"text":" 【プレイヤー別設定】","italic":false,"color":"white"}','{"text":"    表示","italic":false,"color":"aqua"}']]
execute if data storage temp:_ data.player_storage.settings{movie_frame:0b} run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},item_model="minecraft:spyglass",item_name='{"text":"ムービーフレーム"}',lore=['{"text":" 【プレイヤー別設定】","italic":false,"color":"white"}','{"text":"    非表示","italic":false,"color":"aqua"}']]

execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:2b} run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=14,item_name='{"text":"会話のスピード"}',lore=['{"text":" 【ワールド共通設定】","italic":false,"color":"white"}','{"text":"    標準","italic":false,"color":"aqua"}']]
execute if data storage anemoland:settings data{text_speed:0b} run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=14,item_name='{"text":"会話のスピード"}',lore=['{"text":" 【ワールド共通設定】","italic":false,"color":"white"}','{"text":"    ゆっくり","italic":false,"color":"aqua"}']]
execute if data storage anemoland:settings data{text_speed:2b} run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=14,item_name='{"text":"会話のスピード"}',lore=['{"text":" 【ワールド共通設定】","italic":false,"color":"white"}','{"text":"    早い","italic":false,"color":"aqua"}']]

# item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
