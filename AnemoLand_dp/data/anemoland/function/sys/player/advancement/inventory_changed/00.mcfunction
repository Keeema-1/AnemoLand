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

# スキル関連
    function anemoland:sys/player/common/skill_levels/0
    execute store result score @s skill_gauge_max run data get storage temp:_ data.skill_levels.gauge_extension 1
    scoreboard players add @s skill_gauge_max 300

# 攻撃力ステータスを更新
    function anemoland:sys/player/common/update_attack_status/0
