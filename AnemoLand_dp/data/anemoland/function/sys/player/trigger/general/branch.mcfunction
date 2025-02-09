# 「はじめにお読みください」を確認したフラグ
    execute if score @s trigger matches 1 run function anemoland:command/progress/read_first_book

# ムービーフレーム確認
    execute if score @s trigger matches 2 run title @s times 20 40 20
    execute if score @s trigger matches 2 run function anemoland_contents:sys/movie/common/movie_frame/00
