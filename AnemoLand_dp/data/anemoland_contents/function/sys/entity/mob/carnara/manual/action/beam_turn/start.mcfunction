#> anemoland_contents:sys/entity/mob/carnara/manual/action/beam_turn/start
#
# アクション beam_turn の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/carnara/action/beam_turn/start

function anemoland:sys/entity/common/target_direction/is_leftside

execute if score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 1
execute unless score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 0

execute if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/carnara/animation/beam_turn_left
execute if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/carnara/animation/beam_turn_right

execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 0
