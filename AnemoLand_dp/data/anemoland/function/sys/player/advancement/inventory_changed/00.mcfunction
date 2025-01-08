#> anemoland:sys/player/advancement/inventory_changed/00
#
# インベントリが変化した時に実行される
#
# @within function anemoland:sys/player/advancement/inventory_changed/0

# プレイヤーのデータをストレージに保存
    data modify storage temp:_ data.player_data.SelectedItem set from entity @s SelectedItem
    data modify storage temp:_ data.player_data.Inventory set from entity @s Inventory

# 売却によるゴールド取得
    scoreboard players set #gold_add temp 0
    execute if data storage temp:_ data.player_data.Inventory[{id:"minecraft:gold_nugget"}].components."minecraft:custom_data".gold store result score #gold_add temp run data get storage temp:_ data.player_data.Inventory[{id:"minecraft:gold_nugget"}].components."minecraft:custom_data".gold
    scoreboard players operation @s gold += #gold_add temp
    clear @s gold_nugget

# メニュー処理
    function anemoland:sys/player/menu/0

# 攻撃力ステータスを更新
    function anemoland:sys/player/common/update_attack_status/0
