#> anemoland_contents:sys/entity/mob/squirrel_head/manual/action/spin_jump/start
#
# アクション spin_jump の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/squirrel_head/action/spin_jump/start

function anemoland_contents:sys/entity/mob/squirrel_head/animation/spin_jump_left1

execute as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 2 0.7
