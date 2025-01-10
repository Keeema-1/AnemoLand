#> anemoland_contents:sys/entity/mob/carnara/manual/action/turn/tick
#
# アクション turn 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/carnara/action/turn/tick

# 分岐する場合
    execute if score @s action1 matches 0 run function anemoland_contents:sys/entity/mob/carnara/manual/action/turn/0/0
    execute if score @s action1 matches 1 run function anemoland_contents:sys/entity/mob/carnara/manual/action/turn/1/0
# 終了
    execute if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/carnara/action/turn/end
