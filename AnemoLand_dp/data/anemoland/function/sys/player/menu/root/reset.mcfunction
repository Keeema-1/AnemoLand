
# メニュー用アイテムをクリア
    clear @s #anemoland:menu1[custom_data={menu:1b}]

# 0
    item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},custom_model_data=21,item_name='{"translate":"anemoland.menu.status"}']
    function anemoland:sys/player/menu/root/update_status/0
# 1
    item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=59,item_name='{"translate":"anemoland.menu.pet"}']
# 2
    item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=104,item_name='{"translate":"anemoland.menu.equipment"}']
# 3
    item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=52,item_name='{"text":"依頼"}',lore=['{"text":"  (仮)","color":"gray","italic":false}']]
# 4
    item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=103,item_name='{"translate":"anemoland.menu.team"}']
# 5
    item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},custom_model_data=14,item_name='{"text":"会話"}',lore=['{"text":"  (仮)","color":"gray","italic":false}']]
# 6
    item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=28,item_name='{"text":"ニュース"}',lore=['{"text":"  (仮)","color":"gray","italic":false}']]
# 7
    item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},custom_model_data=27,item_name='{"translate":"anemoland.menu.tp"}']
# 8
    item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},custom_model_data=102,item_name='{"translate":"anemoland.menu.settings"}',lore=['{"text":"  AnemoLand ver.Beta-1.0","color":"aqua","italic":false}']]
