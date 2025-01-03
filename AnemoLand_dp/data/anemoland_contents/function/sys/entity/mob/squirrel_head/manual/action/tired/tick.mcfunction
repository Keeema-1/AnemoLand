#> anemoland_contents:sys/entity/mob/squirrel_head/manual/action/tired/tick
#
# アクション tired 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/squirrel_head/action/tired/tick

execute if score @s action_time matches 160.. run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/tired/end
