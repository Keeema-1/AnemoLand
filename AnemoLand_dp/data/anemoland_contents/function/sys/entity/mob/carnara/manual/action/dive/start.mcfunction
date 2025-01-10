#> anemoland_contents:sys/entity/mob/carnara/manual/action/dive/start
#
# アクション dive の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/carnara/action/dive/start

function anemoland_contents:sys/entity/mob/carnara/animation/dive1

execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 0
