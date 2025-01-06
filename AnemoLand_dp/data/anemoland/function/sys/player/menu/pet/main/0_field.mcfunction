
# 置かれたアイテムがペットだがメニューフラグが付いていない場合 (=新しくペットアイテムを設置したとき)、ドロップ
    execute if data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{is_pet:1b,is_boss:0b}}}] unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{menu:1b}}}] run function anemoland:sys/player/menu/common/drop_item/1
    execute if data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{is_pet:1b,is_boss:0b}}}] unless data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{menu:1b}}}] run function anemoland:sys/player/menu/common/drop_item/2
    execute if data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{is_pet:1b,is_boss:0b}}}] unless data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{menu:1b}}}] run function anemoland:sys/player/menu/common/drop_item/3
