#> anemoland_contents:sys/entity/mob/raptor/manual/action/stop/tick
#
# アクション stop 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/raptor/action/stop/tick

execute unless entity @s[tag=damaged] if predicate anemoland:random_chance/0_2 run function anemoland:sys/entity/common/collide/1

execute if score #hostile_target.exist temp matches 1 run function anemoland_contents:sys/entity/mob/raptor/action/stop/end
