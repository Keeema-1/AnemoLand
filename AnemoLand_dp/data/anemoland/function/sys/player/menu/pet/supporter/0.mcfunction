#> anemoland:sys/player/menu/pet/supporter/0
#
# ペットメニューの助っ人設定
#
# @input
#   storage temp:_
#       data.player_data.SelectedItem
#       data.player_data.Inventory_changed
#   tag @s player_check
#
# @within function anemoland:sys/player/menu/pet/0

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

# クリック時処理
    execute unless data storage temp:_ data.player_data.Inventory[{Slot:9b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/pet/supporter/click/0
    execute if data storage anemoland:progress data.npc_list.boy1{unlock:1b} unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/pet/supporter/click/1
    execute if data storage anemoland:progress data.npc_list.sally{unlock:1b} unless data storage temp:_ data.player_data.Inventory[{Slot:11b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/pet/supporter/click/2

# メニュー用アイテムをリセット
    function anemoland:sys/player/menu/pet/supporter/reset
