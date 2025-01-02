#> anemoland:sys/player/area/entrance/0
#
# エントランスにいる時の処理
#
# @within function anemoland:sys/player/area/0

# スタート位置でのアクションバー表示
    execute positioned 0.0 -6.0 12.0 unless entity @s[distance=..4] run title @s actionbar ""
    execute positioned 0.0 -6.0 12.0 if entity @s[tag=cannot_start,distance=..4] at @s run title @s actionbar {"translate":"general.please_read_first_book","color":"yellow"}
    execute positioned 0.0 -6.0 12.0 if entity @s[tag=!cannot_start,distance=..4] at @s run function anemoland:sys/player/area/entrance/00

# 満腹度の調整
    execute if predicate anemoland:random_chance/0_1 run function anemoland:sys/player/common/adjust_food_level/0