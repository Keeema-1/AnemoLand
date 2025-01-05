#> anemoland:sys/player/advancement/consume_item/food
#
# 食べ物を食べたら実行される
#
# @within advancement anemoland:consume_item/food

# インベントリのデータを取得
    data modify storage temp:_ data.player_data.Inventory set from entity @s Inventory
# 発動スキルを確認
    function anemoland:sys/player/common/skill_levels/0

# 回復量アップスキルのレベルに応じて再生を付与
    execute if data storage temp:_ data.skill_levels{recovery_up:1} run effect give @s regeneration 1 1 true
    execute if data storage temp:_ data.skill_levels{recovery_up:2} run effect give @s regeneration 2 1 true
    execute if data storage temp:_ data.skill_levels{recovery_up:3} run effect give @s regeneration 3 1 true
    execute if data storage temp:_ data.skill_levels{recovery_up:4} run effect give @s regeneration 4 1 true
    execute if data storage temp:_ data.skill_levels{recovery_up:5} run effect give @s regeneration 5 1 true

# 再検知用に進捗を剥奪
    advancement revoke @s only anemoland:consume_item/food
