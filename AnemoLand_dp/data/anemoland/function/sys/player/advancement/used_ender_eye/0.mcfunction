#> anemoland:sys/player/advancement/used_ender_eye/0
#
# エンダーアイを投げたら実行される
# 右クリックしても投げなかった場合は実行されない？
#
# @within advancement anemoland:used_ender_eye

# 再検知用に進捗を剥奪
    advancement revoke @s only anemoland:used_ender_eye

# # 一時的なスコアとストレージをリセット
#     scoreboard players reset * temp
#     data remove storage temp:_ data
