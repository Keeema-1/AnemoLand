#> anemoland_contents:sys/entity/mob/raptor/manual/action/side_jump/start
#
# アクション side_jump の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/raptor/action/side_jump/start

execute store result score @s action_way run random value 0..1

execute if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/raptor/animation/left_jump
execute if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/raptor/animation/right_jump

execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 0.8 0.4
