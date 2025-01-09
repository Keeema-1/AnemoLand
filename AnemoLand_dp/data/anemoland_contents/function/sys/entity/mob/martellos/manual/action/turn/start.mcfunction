#> anemoland_contents:sys/entity/mob/martellos/manual/action/turn/start
#
# アクション turn の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/martellos/action/turn/start

function anemoland:sys/entity/common/target_direction/is_leftside

execute if score #target_is_leftside temp matches 1 run function anemoland_contents:sys/entity/mob/martellos/animation/turn_left
execute unless score #target_is_leftside temp matches 1 run function anemoland_contents:sys/entity/mob/martellos/animation/turn_right
