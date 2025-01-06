
# 置かれたアイテムをドロップ
    function anemoland:sys/player/menu/common/drop_item/0
    function anemoland:sys/player/menu/common/drop_item/1
    function anemoland:sys/player/menu/common/drop_item/2
    function anemoland:sys/player/menu/common/drop_item/3
    function anemoland:sys/player/menu/common/drop_item/4
    function anemoland:sys/player/menu/common/drop_item/5
    function anemoland:sys/player/menu/common/drop_item/6
    function anemoland:sys/player/menu/common/drop_item/7
    function anemoland:sys/player/menu/common/drop_item/8

# クリック時のメニュー遷移
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:9b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/armor/main/click/0
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/armor/main/click/1
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/armor/main/click/2
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/armor/main/click/3
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:13b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/armor/main/click/4
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:14b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/armor/main/click/5
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:15b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/armor/main/click/6
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:16b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/armor/main/click/7

# メニュー用アイテムをリセット
    function anemoland:sys/player/menu/armor/main/reset
