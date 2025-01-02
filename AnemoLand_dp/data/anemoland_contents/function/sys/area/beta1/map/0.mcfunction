# フィールドに移動
    execute if score @s sneak_time matches 20.. as @e[type=text_display,tag=area_info,tag=active,distance=..4] run function anemoland_contents:sys/area/beta1/map/enter_field
# 既にプレイヤーがいるかチェック
    execute if predicate anemoland:random_chance/0_1 as @e[type=text_display,tag=area_info,distance=..8] at @s run function anemoland_contents:sys/area/beta1/map/exist_check/0
# フィールドディスプレイを更新
    execute if predicate anemoland:random_chance/0_2 as @e[type=text_display,tag=area_info,distance=..32] at @s run function anemoland_contents:sys/area/beta1/map/update_display/0
