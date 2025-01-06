
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
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:9b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/tp/main/click/0
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:17b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/tp/main/click/8

# メニュー用アイテムをリセット
    function anemoland:sys/player/menu/tp/main/update
