#> anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_line/tick
#
# アクション ground_line 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/muscleroom/action/ground_line/tick

# 分岐
    execute if score @s action1 matches 0 run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_line/0/0
    execute if score @s action1 matches 1 run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_line/1/0
