#> anemoland:sys/player/update_info/main
#
# アップデートインフォ
#
# @within function anemoland:sys/player/tick

# アップデート後バージョンの変更点
    # Beta-1-0
        execute if score #system version matches 100 run function anemoland:sys/player/update_info/beta_1_0

# アップデートでまたいだバージョンの大きな変更点
    # Beta-1-0
        execute unless score @s version matches 100.. if score #system version matches 101.. run function anemoland:sys/player/update_info/beta_1_0_core

# プレイヤーのバージョンスコアを更新
    scoreboard players operation @s version = #system version
