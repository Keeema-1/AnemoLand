#> anemoland_contents:sys/entity/mob/martellos/manual/damaged
#
# 怒り中に実行される
# このファイルは初回のみ自動生成される
# パーティクルなど、怒り時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/martellos/state/tick

scoreboard players operation #entity_id temp = @s entity_id
execute if predicate anemoland:random_chance/0_2 as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=martellos,distance=..32] if score @s entity_id = #entity_id temp positioned as @s run particle poof ^ ^0.5 ^1.5 0.1 0.1 0.1 0 1
