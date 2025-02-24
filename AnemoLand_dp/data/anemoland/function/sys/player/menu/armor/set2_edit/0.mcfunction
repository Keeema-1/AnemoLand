
# 置かれたアイテムをドロップ
    function anemoland:sys/player/menu/common/drop_item/0
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{item_type:"armor","part":"helmet"}}}] run function anemoland:sys/player/menu/common/drop_item/1
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{item_type:"armor","part":"chestplate"}}}] run function anemoland:sys/player/menu/common/drop_item/2
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{item_type:"armor","part":"leggings"}}}] run function anemoland:sys/player/menu/common/drop_item/3
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:13b,components:{"minecraft:custom_data":{item_type:"armor","part":"boots"}}}] run function anemoland:sys/player/menu/common/drop_item/4
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:14b,components:{"minecraft:custom_data":{item_type:"armor","part":"amulet"}}}] run function anemoland:sys/player/menu/common/drop_item/5
    function anemoland:sys/player/menu/common/drop_item/6
    function anemoland:sys/player/menu/common/drop_item/7
    function anemoland:sys/player/menu/common/drop_item/8

# クリック時のメニュー遷移
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:9b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/armor/set2_edit/click/0

# メニュー用アイテムをリセット
    function anemoland:sys/player/menu/armor/set2_edit/reset
