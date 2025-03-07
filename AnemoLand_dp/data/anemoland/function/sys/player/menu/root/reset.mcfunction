
# メニュー用アイテムをクリア
    clear @s #anemoland:menu1[custom_data={menu:1b}]

# 0
    item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/human",item_name='{"translate":"anemoland.menu.status"}']
    function anemoland:sys/player/menu/root/update_status/0
# 1
    item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/horn",item_name='{"translate":"anemoland.menu.pet"}']
# 2
    item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/armor",item_name='{"translate":"anemoland.menu.equipment"}']
# 3
    item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/transparent",hide_tooltip={}]
# 4
    item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/transparent",hide_tooltip={}]
# 5
    item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/transparent",hide_tooltip={}]
# 6
    item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/transparent",hide_tooltip={}]
# 7
    item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/world",item_name='{"translate":"anemoland.menu.tp"}']
# 8
    item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},item_model="anemoland:gui/icon/settings",item_name='{"translate":"anemoland.menu.settings"}',lore=['{"text":"  AnemoLand ver.Beta-1.0","color":"aqua","italic":false}']]
