clear @s #anemoland:menu1[custom_data={menu:1b}]
item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},custom_model_data=3,item_name='{"text":"戻る","color":"white"}']
item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
execute if data storage temp:_ data.player_storage.supporters.1{id:"girl2"} run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=201,item_name='{"text":"サリー","italic":false}',lore=['{"text":"  選択中","italic":false,"color":"aqua"}']]
execute if data storage anemoland:progress data.supporter{girl2:1b} unless data storage temp:_ data.player_storage.supporters.1{id:"girl2"} run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=201,item_name='{"text":"サリー","italic":false}',lore=['{"text":"  選択する","italic":false,"color":"white"}']]
item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']