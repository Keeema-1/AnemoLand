#> anemoland_contents:sys/entity/mob/garuda/manual/action/pick_jump/tick
#
# アクション pick_jump 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garuda/action/pick_jump/tick

# 分岐
    execute if score @s action1 matches 0 run function anemoland_contents:sys/entity/mob/garuda/manual/action/pick_jump/0/0
    execute if score @s action1 matches 1 run function anemoland_contents:sys/entity/mob/garuda/manual/action/pick_jump/1/0
