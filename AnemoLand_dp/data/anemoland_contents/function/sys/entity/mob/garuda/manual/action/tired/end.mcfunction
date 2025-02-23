#> anemoland_contents:sys/entity/mob/garuda/manual/action/tired/end
#
# アクション tired の終了時に実行される
# このファイルは初回のみ自動生成される
# アクション終了時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garuda/action/tired/end

execute if entity @s[tag=!charged] run return run function anemoland_contents:sys/entity/mob/garuda/action/shake_feather/start
function anemoland_contents:sys/entity/mob/garuda/action/stop/start
