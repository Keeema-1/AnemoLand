#> anemoland:sys/player/menu/root/0
#
# メインメニューのメイン処理
#
# @input
#   storage temp:_
#       data.player_data.SelectedItem
#       data.player_data.Inventory_changed
#   tag @s player_check
#
# @within function anemoland:sys/player/menu/branch

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

# clear時
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:9b,components:{"minecraft:custom_data":{menu:1b}}}] unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/root/reset

# クリック時のメニュー遷移
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/root/click/to_pet
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/root/click/to_armor
    # execute unless data storage temp:_ data.player_data.Inventory[{Slot:13b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/root/click/to_team
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:16b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/root/click/to_tp
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:17b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/root/click/to_setting

# メニュー用アイテムをリセット
    function anemoland:sys/player/menu/root/reset
