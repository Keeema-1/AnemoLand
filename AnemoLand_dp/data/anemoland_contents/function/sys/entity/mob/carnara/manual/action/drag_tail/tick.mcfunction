#> anemoland_contents:sys/entity/mob/carnara/manual/action/drag_tail/tick
#
# アクション drag_tail 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/carnara/action/drag_tail/tick

# 分岐
    execute if score @s action1 matches 0 run function anemoland_contents:sys/entity/mob/carnara/manual/action/drag_tail/0/0
    execute if score @s action1 matches 1 run function anemoland_contents:sys/entity/mob/carnara/manual/action/drag_tail/1/0
