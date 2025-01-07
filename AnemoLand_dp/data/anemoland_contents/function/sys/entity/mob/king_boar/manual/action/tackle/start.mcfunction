#> anemoland_contents:sys/entity/mob/king_boar/manual/action/tackle/start
#
# アクション tackle の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/king_boar/action/tackle/start

function anemoland_contents:sys/entity/mob/king_boar/animation/run

particle cloud ^1 ^0.5 ^2 0 0 0 0.00 4
particle cloud ^-1 ^0.5 ^2 0 0 0 0.00 4
execute as @a[distance=..64] at @s run playsound minecraft:entity.hoglin.angry hostile @s ~ ~ ~ 2 0.7
execute as @a[distance=..64] at @s run playsound minecraft:entity.hoglin.angry hostile @s ~ ~ ~ 2 0.8
