#> anemoland_contents:sys/entity/mob/boar/manual/action/tackle/tick
#
# アクション tackle 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/boar/action/tackle/tick

# チャージ
execute if score @s action1 matches 0 run function anemoland_contents:sys/entity/mob/boar/manual/action/tackle/0/0
# 突進
execute if score @s action1 matches 1 run function anemoland_contents:sys/entity/mob/boar/manual/action/tackle/1/0
# ブレーキ
execute if score @s action1 matches 2 run function anemoland_contents:sys/entity/mob/boar/manual/action/tackle/2/0
