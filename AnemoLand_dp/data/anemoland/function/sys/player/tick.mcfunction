#> anemoland:sys/player/tick
#
# プレイヤーごとの処理
#
# @within function anemoland:tick

# ログイン検知
    execute unless score @s exist matches 1 run function anemoland:sys/player/login

# アップデートインフォ
    execute unless score #system version <= @s version run function anemoland:sys/player/update_info/main

# execute if entity @s[gamemode=spectator] run return 1

# プレイヤーのデータをストレージに保存
    data modify storage temp:_ data.player_data.SelectedItem set from entity @s SelectedItem
    data modify storage temp:_ data.player_data.Inventory set from entity @s Inventory

#declare tag player_check プレイヤーごとの処理時に対象プレイヤーに付ける
tag @s add player_check

# トリガー
    execute if score @s trigger matches -2147483648..2147483647 unless score @s trigger matches 0 run function anemoland:sys/player/trigger/0
# プレイヤーの状態チェックなど
    function anemoland:sys/player/state/0
# プレイアーのエリア処理
    function anemoland:sys/player/area/0
# プレイヤーのアイテム関連処理
    function anemoland:sys/player/item/0
# プレイヤーのacationbarなど
    function anemoland:sys/player/title/0
# プレイヤーに流す音楽の処理
    function anemoland:sys/player/music/0
# 一時的にコメントアウト
    # function anemoland:sys/player/pet/0
    # execute if score @s area2 matches 1.. run function anemoland:sys/player/skill/tick/0

tag @s remove player_check

clear @s *[custom_data={chest_menu:1b}]

# fill ~-20 -10 ~-20 ~20 -10 ~20 sandstone replace water
# fill ~-20 -9 ~-20 ~20 -9 ~20 sand replace water

# fill ~-2 -8 ~-2 ~2 -8 ~2 sand replace water
