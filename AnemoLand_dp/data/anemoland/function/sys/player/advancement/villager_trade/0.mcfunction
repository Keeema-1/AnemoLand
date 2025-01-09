#> anemoland:sys/player/advancement/villager_trade/0
#
# 村人と交易をしたら実行される
# 装備などは1回しか交易できないようにして、この処理で回数をリセットする
#
# @within advancement anemoland:villager_trade

# 再検知用に進捗を剥奪
    advancement revoke @s only anemoland:villager_trade

# 1tick後に村人のusesを削除
    schedule function anemoland:sys/player/advancement/villager_trade/scheduled 1t

# 一時的なスコアとストレージをリセット
    scoreboard players reset * temp
    data remove storage temp:_ data
