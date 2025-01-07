#> anemoland_contents:sys/entity/mob/garapas/manual/action/bite/start
#
# アクション bite の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garapas/action/bite/start

function anemoland_contents:sys/entity/mob/garapas/animation/bite

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 1 1
execute as @a[distance=..64] at @s run playsound minecraft:entity.shulker.hurt hostile @s ~ ~ ~ 1 0.5
