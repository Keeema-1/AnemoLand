#> anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_target/start
#
# アクション ground_target の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/muscleroom/action/ground_target/start

function anemoland_contents:sys/entity/mob/muscleroom/animation/ground1

execute as @a[distance=..64] at @s run playsound minecraft:entity.squid.squirt hostile @s ~ ~ ~ 2 0
