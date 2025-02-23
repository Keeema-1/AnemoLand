#> anemoland_contents:sys/entity/mob/garuda/manual/action/dash/tick
#
# アクション dash 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garuda/action/dash/tick

# 分岐
    execute if score @s action1 matches 0 run function anemoland_contents:sys/entity/mob/garuda/manual/action/dash/0/0
    execute if score @s action1 matches 1 run function anemoland_contents:sys/entity/mob/garuda/manual/action/dash/1/0
    execute if score @s action1 matches 2 run function anemoland_contents:sys/entity/mob/garuda/manual/action/dash/2/0
