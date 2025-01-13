
# メニュー用アイテムをクリア
    clear @s #anemoland:menu1[custom_data={menu:1b}]

# 0
    item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},custom_model_data=3,item_name='{"text":"戻る","color":"white"}']
# 1
    item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=1]
    execute if data storage temp:_ data.player_storage.supporters.1{id:"boy1"} run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=202,item_name='{"translate":"anemoland.talker.boy1.name","italic":false}',lore=['{"text":"  選択中","italic":false,"color":"aqua"}']]
    execute if data storage anemoland:progress data.npc_list.boy1{unlock:1b} unless data storage temp:_ data.player_storage.supporters.1{id:"boy1"} run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=202,item_name='{"translate":"anemoland.talker.boy1.name","italic":false}',lore=['{"text":"  選択する","italic":false,"color":"white"}']]
# 2
    item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=1]
    execute if data storage temp:_ data.player_storage.supporters.1{id:"sally"} run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=201,item_name='{"translate":"anemoland.talker.sally.name","italic":false}',lore=['{"text":"  選択中","italic":false,"color":"aqua"}']]
    execute if data storage anemoland:progress data.npc_list.sally{unlock:1b} unless data storage temp:_ data.player_storage.supporters.1{id:"sally"} run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=201,item_name='{"translate":"anemoland.talker.sally.name","italic":false}',lore=['{"text":"  選択する","italic":false,"color":"white"}']]
# 3
    item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=1]
# 4
    item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=1]
# 5
    item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},custom_model_data=1]
# 6
    item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=1]
# 7
    item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},custom_model_data=1]
# 8
    item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},custom_model_data=1]
