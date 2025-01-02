#> anemoland_contents:sys/entity/mob/boar/manual/action/tackle/start
#
# アクション tackle の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/boar/action/tackle/start

function anemoland_contents:sys/entity/mob/boar/animation/run

particle cloud ^0.3 ^0.5 ^1.5 0 0 0 0.00 2
particle cloud ^-0.3 ^0.5 ^1.5 0 0 0 0.00 2

function anemoland_contents:sys/entity/mob/boar/manual/sound/tackle_charge
