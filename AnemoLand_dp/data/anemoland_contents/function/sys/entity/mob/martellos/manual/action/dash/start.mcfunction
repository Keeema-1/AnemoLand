#> anemoland_contents:sys/entity/mob/martellos/manual/action/dash/start
#
# アクション dash の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/martellos/action/dash/start

# function anemoland_contents:sys/entity/mob/martellos/animation/default

function anemoland_contents:sys/entity/mob/martellos/animation/dash_charge

execute as @a[distance=..64] at @s run playsound entity.polar_bear.death hostile @s ~ ~ ~ 1 0.5
