#> anemoland_contents:sys/entity/mob/raptor/manual/action/jump/start
#
# アクション jump の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/raptor/action/jump/start

function anemoland_contents:sys/entity/mob/raptor/animation/jump_charge

execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 0.8 0.4
