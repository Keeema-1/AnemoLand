#> anemoland:sys/player/area/playing
#
# プレイ中のエリア処理
#
# @within function anemoland:sys/player/area/0

# 島ごとの分岐
    execute if score @s area1 matches 1.. run function anemoland_contents:sys/area/branch
# マップ共通処理
    execute if score @s area2 matches 0 at @s run function anemoland:sys/player/area/common/map/0
# 村共通処理
    execute if score @s area2 matches ..-1 at @s run function anemoland:sys/player/area/common/village/0
# フィールド共通処理
    execute if score @s area2 matches 1.. at @s run function anemoland:sys/player/area/common/field/0
