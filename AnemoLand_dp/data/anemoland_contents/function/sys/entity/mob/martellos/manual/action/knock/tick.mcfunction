#> anemoland_contents:sys/entity/mob/martellos/manual/action/knock/tick
#
# アクション knock 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/martellos/action/knock/tick

# 分岐
    execute if score @s action1 matches 0 run function anemoland_contents:sys/entity/mob/martellos/manual/action/knock/0/0
    execute if score @s action1 matches 1 run function anemoland_contents:sys/entity/mob/martellos/manual/action/knock/1/0
    execute if score @s action1 matches 2 run function anemoland_contents:sys/entity/mob/martellos/manual/action/knock/2/0
