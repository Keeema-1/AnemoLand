#> anemoland:sys/player/advancement/inventory_changed/00
#
# インベントリが変化した時に実行される
#
# @within function anemoland:sys/player/advancement/inventory_changed/0

# プレイヤーのデータをストレージに保存
    data modify storage temp:_ data.player_data.SelectedItem set from entity @s SelectedItem
    data modify storage temp:_ data.player_data.Inventory set from entity @s Inventory

execute at @e[type=marker,tag=chest_marker,distance=..8] run function anemoland:sys/player/advancement/inventory_changed/000

# バンドルにメニューアイテムを入れたとき
    execute if items entity @s player.cursor bundle[bundle_contents~{id:"knowledge_book",components:{custom_data:{menu:1b}}}] run item replace entity @s player.cursor with bundle

# メニュー処理
    function anemoland:sys/player/menu/0

# 攻撃力ステータスを更新
    function anemoland:sys/player/common/update_attack_status/0
