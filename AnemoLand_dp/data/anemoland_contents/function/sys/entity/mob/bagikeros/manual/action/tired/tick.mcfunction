#> anemoland_contents:sys/entity/mob/bagikeros/manual/action/tired/tick
#
# アクション tired 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/bagikeros/action/tired/tick

tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 120.. run function anemoland_contents:sys/entity/mob/bagikeros/action/tired/end