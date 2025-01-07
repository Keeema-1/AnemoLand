#> anemoland_contents:sys/entity/mob/garapas/manual/action/stop/end
#
# アクション stop の終了時に実行される
# このファイルは初回のみ自動生成される
# アクション終了時の処理をこの下に記述
# 咆哮(bark)・怒り(get_angry)・疲労(tired)の条件を満たした場合は自動的にそのアクションに移行し、この関数はスキップされます。
#
# @within function anemoland_contents:sys/entity/mob/garapas/action/stop/end

execute if predicate anemoland:random_chance/0_5 run return run function anemoland_contents:sys/entity/mob/garapas/action/walk/start

function anemoland_contents:sys/entity/mob/garapas/action/keep_distance/start
