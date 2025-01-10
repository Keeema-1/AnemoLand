#> anemoland_contents:sys/entity/mob/muscleroom/manual/action/punch/tick
#
# アクション punch 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/muscleroom/action/punch/tick

# 分岐
    execute if score @s action1 matches 0 run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/punch/0/0
    execute if score @s action1 matches 1 run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/punch/1/0
    