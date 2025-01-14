#> anemoland:sys/player/advancement/using_item/0
#
# アイテムを使用中に実行される
#
# @within advancement anemoland:using_item/any

# tag @s add player_check

# 再検知用に進捗を剥奪
    advancement revoke @s only anemoland:using_item/any

# # 一時的なスコアとストレージをリセット
#     scoreboard players reset * temp
#     data remove storage temp:_ data

# tag @s remove player_check
