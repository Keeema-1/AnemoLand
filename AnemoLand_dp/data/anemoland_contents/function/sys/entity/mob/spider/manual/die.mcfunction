#> anemoland_contents:sys/entity/mob/spider/manual/damaged
#
# 死亡時に実行される
# このファイルは初回のみ自動生成される
# サウンドなど、死亡時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/spider/damaged/common

execute as @a[distance=..64] at @s run playsound entity.spider.death hostile @s ~ ~ ~ 1 0.4
