#> anemoland:sys/player/area/0
#
# エントランスにいるかプレイ中かで分岐
#
# @within function anemoland:sys/player/tick

# エントランス
    execute if score @s area0 matches 0 run function anemoland:sys/player/area/entrance/0

# プレイ中
    execute if score @s area0 matches 1.. run function anemoland:sys/player/area/playing
