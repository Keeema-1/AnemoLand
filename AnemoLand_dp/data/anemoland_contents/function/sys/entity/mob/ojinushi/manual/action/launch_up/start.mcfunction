#> anemoland_contents:sys/entity/mob/ojinushi/manual/action/launch_up/start
#
# アクション launch_up の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/ojinushi/action/launch_up/start

function anemoland_contents:sys/entity/mob/ojinushi/animation/launch_up

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 2 0.9
