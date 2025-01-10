#> anemoland_contents:sys/entity/mob/muscleroom/manual/damaged
#
# 怒り中に実行される
# このファイルは初回のみ自動生成される
# パーティクルなど、怒り時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/muscleroom/state/tick

execute if predicate anemoland:random_chance/0_2 run particle poof ^ ^2 ^ 0.1 0.1 0.1 0.1 1
