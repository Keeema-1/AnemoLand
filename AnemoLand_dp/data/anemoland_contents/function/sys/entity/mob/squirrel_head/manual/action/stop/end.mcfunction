#> anemoland_contents:sys/entity/mob/squirrel_head/manual/action/stop/end
#
# アクション stop の終了時に実行される
# このファイルは初回のみ自動生成される
# アクション終了時の処理をこの下に記述
# 咆哮(bark)・怒り(get_angry)・疲労(tired)の条件を満たした場合は自動的にそのアクションに移行し、この関数はスキップされます。
#
# @within function anemoland_contents:sys/entity/mob/squirrel_head/action/stop/end

function anemoland_contents:sys/entity/mob/squirrel_head/choose_action/test/0
# function anemoland_contents:sys/entity/mob/squirrel_head/action/spin_jump/start