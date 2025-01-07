#> anemoland_contents:sys/entity/mob/king_boar/manual/action/dive/start
#
# アクション dive の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/king_boar/action/dive/start

function anemoland_contents:sys/entity/mob/king_boar/animation/dive

execute as @a[distance=..64] at @s run playsound minecraft:entity.hoglin.angry hostile @s ~ ~ ~ 2 0.7
execute as @a[distance=..64] at @s run playsound minecraft:entity.hoglin.angry hostile @s ~ ~ ~ 2 0.8
