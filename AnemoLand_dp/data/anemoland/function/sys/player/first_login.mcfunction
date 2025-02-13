#> anemoland:sys/player/first_login
#
# 初ログイン時の処理
#
# @within function anemoland:sys/player/login

# プレイヤーidの割り当て
    scoreboard players operation @s player_id = #new_player_id player_id
    scoreboard players add #new_player_id player_id 1

# 初期化
    function anemoland:sys/player/init

# エントランスに入る
    function anemoland:sys/player/area/entrance/enter/0

# スポーンポイント
    spawnpoint @s 0 -6 0 0

# 「はじめにお読みください」を読んでいない人に付けるタグ
    tag @s add cannot_start

# バージョンスコアを同期
    scoreboard players operation @s version = #system version

# 実績
    advancement grant @s only anemoland:achievements/root
    advancement grant @s only anemoland:achievements/explore
    advancement grant @s only anemoland:achievements/pet
    advancement grant @s only anemoland:achievements/monster

tellraw @s {"text":"Welcome to AnemoLand!!","color":"green"}
