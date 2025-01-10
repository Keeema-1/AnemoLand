#> anemoland_contents:sys/entity/mob/carnara/manual/action/beam_turn/tick
#
# アクション beam_turn 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/carnara/action/beam_turn/tick

# 分岐
    execute if score @s action1 matches 0 run function anemoland_contents:sys/entity/mob/carnara/manual/action/beam_turn/0/0
    execute if score @s action1 matches 1 run function anemoland_contents:sys/entity/mob/carnara/manual/action/beam_turn/1/0
