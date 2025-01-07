#> anemoland_contents:sys/entity/mob/garapas/manual/action/water_front/tick
#
# アクション water_front 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garapas/action/water_front/tick

# 分岐
    execute if score @s action1 matches 0 run function anemoland_contents:sys/entity/mob/garapas/manual/action/water_front/0/0
    execute if score @s action1 matches 1 run function anemoland_contents:sys/entity/mob/garapas/manual/action/water_front/1/0
