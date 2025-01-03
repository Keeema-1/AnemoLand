#> anemoland_contents:sys/entity/mob/squirrel_head/manual/damaged
#
# 怒り中に実行される
# このファイルは初回のみ自動生成される
# パーティクルなど、怒り時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/squirrel_head/tick/state/0

scoreboard players operation #entity_id temp = @s entity_id
execute if predicate anemoland:random_chance/0_1 as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=squirrel_head,distance=..32] if score @s entity_id = #entity_id temp positioned as @s run particle poof ^ ^0.5 ^1 0.1 0.1 0.1 0 1
