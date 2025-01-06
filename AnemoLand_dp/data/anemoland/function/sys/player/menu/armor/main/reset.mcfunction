
# メニュー用アイテムをクリア
    clear @s #anemoland:menu1[custom_data={menu:1b}]

# 0
    item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},custom_model_data=3,item_name='{"text":"戻る","color":"white"}']
# 1
    execute if score #selected_set temp matches 1 run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=108,item_name='{"text":"装備セット1の編集","color":"white"}']
    execute unless score #selected_set temp matches 1 run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=111,item_name='{"text":"装備セット1の編集","color":"white"}']
# 2
    execute if score #selected_set temp matches 1 run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=35,item_name='{"text":"装備セット1：選択中","color":"aqua"}']
    execute unless score #selected_set temp matches 1 run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=33,item_name='{"text":"装備セット1を選択","color":"aqua"}']
# 3
    execute if score #selected_set temp matches 2 run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=109,item_name='{"text":"装備セット2の編集","color":"white"}']
    execute unless score #selected_set temp matches 2 run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=112,item_name='{"text":"装備セット2の編集","color":"white"}']
# 4
    execute if score #selected_set temp matches 2 run item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=35,item_name='{"text":"装備セット2：選択中","color":"aqua"}']
    execute unless score #selected_set temp matches 2 run item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=33,item_name='{"text":"装備セット2を選択","color":"aqua"}']
# 5
    execute if score #selected_set temp matches 3 run item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},custom_model_data=110,item_name='{"text":"装備セット3の編集","color":"white"}']
    execute unless score #selected_set temp matches 3 run item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},custom_model_data=113,item_name='{"text":"装備セット3の編集","color":"white"}']
# 6
    execute if score #selected_set temp matches 3 run item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=35,item_name='{"text":"装備セット3：選択中","color":"aqua"}']
    execute unless score #selected_set temp matches 3 run item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=33,item_name='{"text":"装備セット3を選択","color":"aqua"}']
# 7
    item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},custom_model_data=118,item_name='{"text":"外見装備の設定","color":"white"}']
# 8
    item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']

execute if score #selected_set temp matches 1 run function anemoland:sys/player/menu/armor/main/update_status/1/0
execute if score #selected_set temp matches 2 run function anemoland:sys/player/menu/armor/main/update_status/2/0
execute if score #selected_set temp matches 3 run function anemoland:sys/player/menu/armor/main/update_status/3/0
