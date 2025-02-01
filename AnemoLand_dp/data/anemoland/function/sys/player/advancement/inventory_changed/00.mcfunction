#> anemoland:sys/player/advancement/inventory_changed/00
#
# インベントリが変化した時に実行される
#
# @within function anemoland:sys/player/advancement/inventory_changed/0

# プレイヤーのデータをストレージに保存
    data modify storage temp:_ data.player_data.SelectedItem set from entity @s SelectedItem
    data modify storage temp:_ data.player_data.Inventory set from entity @s Inventory

execute at @e[type=marker,tag=chest_marker,distance=..8] run function anemoland:sys/player/advancement/inventory_changed/000

tag @s add player_check

# バンドルにメニューアイテムを入れたとき
    execute if items entity @s player.cursor bundle positioned ~ ~-100 ~ summon armor_stand run function anemoland:sys/player/advancement/inventory_changed/001

# メニュー処理
    function anemoland:sys/player/menu/0

# 攻撃力ステータスを更新
    function anemoland:sys/player/common/update_attack_status/0

tag @s remove player_check
