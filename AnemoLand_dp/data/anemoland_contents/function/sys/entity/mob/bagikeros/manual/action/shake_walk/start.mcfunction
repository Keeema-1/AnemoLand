#> anemoland_contents:sys/entity/mob/bagikeros/manual/action/shake_walk/start
#
# アクション shake_walk の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/bagikeros/action/shake_walk/start

function anemoland_contents:sys/entity/mob/bagikeros/animation/shake_walk_start

execute as @a[distance=..64] at @s run playsound entity.polar_bear.hurt hostile @s ~ ~ ~ 1 0.6
