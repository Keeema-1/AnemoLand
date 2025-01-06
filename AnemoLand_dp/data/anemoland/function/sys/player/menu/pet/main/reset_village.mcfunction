
# ペットが置かれていない場合、メニュー用アイテムを設置
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{is_pet:1b,is_boss:0b}}}] run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=4,item_name='{"text":"スロット1","color":"white"}']
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{is_pet:1b,is_boss:0b}}}] run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=4,item_name='{"text":"スロット2","color":"white"}']
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{is_pet:1b,is_boss:0b}}}] run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=4,item_name='{"text":"スロット3","color":"white"}',lore=['{"text":"  このスロットのペットは召喚されませんが、", "color":"yellow","italic":false}','{"text":"  経験値を獲得することができます。", "color":"yellow","italic":false}']]
