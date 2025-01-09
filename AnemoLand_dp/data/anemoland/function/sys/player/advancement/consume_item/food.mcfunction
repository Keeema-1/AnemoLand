#> anemoland:sys/player/advancement/consume_item/food
#
# 食べ物を食べたら実行される
#
# @within advancement anemoland:consume_item/food

# インベントリのデータを取得
    data modify storage temp:_ data.player_data.Inventory set from entity @s Inventory

# スキル処理
    function anemoland_contents:sys/player/skill/consumed_food/0

# 再検知用に進捗を剥奪
    advancement revoke @s only anemoland:consume_item/food

# 一時的なスコアとストレージをリセット
    scoreboard players reset * temp
    data remove storage temp:_ data
