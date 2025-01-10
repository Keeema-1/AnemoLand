#> anemoland_contents:sys/entity/mob/bagikeros/manual/damaged
#
# 死亡時に実行される
# このファイルは初回のみ自動生成される
# サウンドなど、死亡時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/bagikeros/damaged/common

execute as @a[distance=..64] at @s run playsound entity.polar_bear.death hostile @s ~ ~ ~ 1 0.3
execute as @a[distance=..64] at @s run playsound entity.polar_bear.death hostile @s ~ ~ ~ 1 0.3

# execute as @a[distance=..64] at @s run playsound item.trident.thunder hostile @s ~ ~ ~ 0.5 1
# execute as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 2 0
