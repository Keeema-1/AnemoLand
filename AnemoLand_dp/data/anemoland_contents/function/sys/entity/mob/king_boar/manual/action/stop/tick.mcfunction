#> anemoland_contents:sys/entity/mob/king_boar/manual/action/stop/tick
#
# アクション stop 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/king_boar/action/stop/tick

# 終了
    execute if score #hostile_target.exist temp matches 1 run function anemoland_contents:sys/entity/mob/king_boar/action/stop/end
