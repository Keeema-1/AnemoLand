#> anemoland_contents:sys/entity/mob/human1/manual/damaged
#
# 攻撃を受けた時に実行される
# このファイルは初回のみ自動生成される
# サウンドなど、攻撃を受けた時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/human1/damaged/common

execute as @a[distance=..64] at @s run playsound entity.player.hurt hostile @s ~ ~ ~ 0.7 1
