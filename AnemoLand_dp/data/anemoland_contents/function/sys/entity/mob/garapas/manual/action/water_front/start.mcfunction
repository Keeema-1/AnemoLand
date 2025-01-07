#> anemoland_contents:sys/entity/mob/garapas/manual/action/water_front/start
#
# アクション water_front の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garapas/action/water_front/start

function anemoland_contents:sys/entity/mob/garapas/animation/water_front

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 1 1
execute as @a[distance=..64] at @s run playsound minecraft:entity.shulker.hurt hostile @s ~ ~ ~ 1 0.5
