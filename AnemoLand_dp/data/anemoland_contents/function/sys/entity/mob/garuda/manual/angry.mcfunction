#> anemoland_contents:sys/entity/mob/garuda/manual/damaged
#
# 怒り中に実行される
# このファイルは初回のみ自動生成される
# パーティクルなど、怒り時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garuda/state/tick

# particle dust{color:[0.7,1.0,0.9],scale:1.0} ~ ~2 ~ 1 1 1 1 3
# particle dust{color:[1.0,1.0,0.2],scale:1.0} ~ ~2 ~ 1 1 1 1 3

scoreboard players operation #entity_id temp = @s entity_id
execute if predicate anemoland:random_chance/0_2 as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=garuda,distance=..32] if score @s entity_id = #entity_id temp positioned as @s run particle poof ^ ^0.5 ^2 0.1 0.1 0.1 0 1
