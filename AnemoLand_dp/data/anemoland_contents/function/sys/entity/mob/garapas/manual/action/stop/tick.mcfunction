#> anemoland_contents:sys/entity/mob/garapas/manual/action/stop/tick
#
# アクション stop 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garapas/action/stop/tick

execute unless entity @s[tag=damaged] if predicate anemoland:random_chance/0_2 run function anemoland:sys/entity/common/collide/1

data modify entity @s Motion[1] set value -0.1

execute if score #hostile_target.exist temp matches 1 if predicate anemoland:random_chance/0_2 run function anemoland_contents:sys/entity/mob/garapas/action/stop/end
