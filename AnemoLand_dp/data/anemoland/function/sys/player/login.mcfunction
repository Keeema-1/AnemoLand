#> anemoland:sys/player/login
#
# ログイン時の処理
#
# @within function anemoland:sys/player/tick

# 初ログイン検知
    execute unless score @s player_id matches 0.. run function anemoland:sys/player/first_login

# 村に戻る
    execute if score @s area2 matches 1.. run function anemoland:command/enter/village

# プレイヤーの状態をリセット
    function anemoland:sys/player/reset