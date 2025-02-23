#> anemoland_contents:sys/entity/mob/garuda/manual/action/shake_feather/start
#
# アクション shake_feather の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garuda/action/shake_feather/start

function anemoland_contents:sys/entity/mob/garuda/animation/bark

# 帯電フラグ
    tag @s add charged
