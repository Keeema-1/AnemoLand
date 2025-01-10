#> anemoland_contents:sys/entity/mob/ojinushi/manual/action/jump_launch/start
#
# アクション jump_launch の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/ojinushi/action/jump_launch/start

function anemoland_contents:sys/entity/mob/ojinushi/animation/jump_launch1

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 2 0.9
