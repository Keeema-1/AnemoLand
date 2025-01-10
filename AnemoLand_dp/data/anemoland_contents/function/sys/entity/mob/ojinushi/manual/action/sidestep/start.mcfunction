#> anemoland_contents:sys/entity/mob/ojinushi/manual/action/sidestep/start
#
# アクション sidestep の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/ojinushi/action/sidestep/start

function anemoland_contents:sys/entity/mob/ojinushi/animation/jump_launch1

execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.hurt hostile @s ~ ~ ~ 2 0.9

execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

execute if score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 1
execute unless score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 0
