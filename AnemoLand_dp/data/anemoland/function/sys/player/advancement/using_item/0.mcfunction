#> anemoland:sys/player/advancement/using_item/0
#
# アイテムを使用中に実行される
#
# @within advancement anemoland:using_item/any

# tag @s add player_check

# 再検知用に進捗を剥奪
    advancement revoke @s only anemoland:using_item/any

# tick処理でアイテム使用を確認するためのタグ
    tag @s add using_item

# 釣り開始
    execute if entity @s[tag=!fishing] if items entity @s weapon.mainhand ender_eye[custom_data~{tool_type:"fishing_rod"}] positioned ~-2 ~-2 ~-2 if entity @e[type=marker,tag=fishing_spot,dx=3,dz=3,dy=3] run tag @s add fishing

# # 一時的なスコアとストレージをリセット
#     scoreboard players reset * temp
#     data remove storage temp:_ data

# tag @s remove player_check
