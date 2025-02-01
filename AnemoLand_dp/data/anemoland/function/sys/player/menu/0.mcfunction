#> anemoland:sys/player/menu/0
#
# メニュー処理
#
# @input
#   storage temp:_
#       data.player_data.SelectedItem
#       data.player_data.Inventory_changed
#
# @within function anemoland:sys/player/advancement/inventory_changed/00

# プレイヤー別ストレージのデータを取得
    function anemoland:sys/player/common/player_storage/read

# 選択中の装備セット
    scoreboard players set #selected_set temp 0
    execute store result score #selected_set temp run data get storage temp:_ data.player_storage.equipments.selected_set
    execute unless score #selected_set temp matches 1..3 run scoreboard players set #selected_set temp 1

# メニューの分岐
    function anemoland:sys/player/menu/branch

# 装備を更新
    function anemoland:sys/player/menu/armor_update/0

# プレイヤー別ストレージのデータを書き込み
    function anemoland:sys/player/common/player_storage/write

scoreboard players reset #click_flag temp
