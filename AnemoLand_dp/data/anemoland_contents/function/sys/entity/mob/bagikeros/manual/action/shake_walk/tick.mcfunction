#> anemoland_contents:sys/entity/mob/bagikeros/manual/action/shake_walk/tick
#
# アクション shake_walk 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/bagikeros/action/shake_walk/tick

# 分岐
    execute if score @s action1 matches 0 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/shake_walk/0/0
    execute if score @s action1 matches 1 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/shake_walk/1/0
