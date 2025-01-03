#> anemoland_contents:sys/entity/mob/squirrel/manual/action/spin/start
#
# アクション spin の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/squirrel/action/spin/start

# 左右の回転方向を決定
    execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
    execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside
    execute if score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 1
    execute unless score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 0

execute if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/squirrel/animation/spin_left
execute if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/squirrel/animation/spin_right

execute as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 1 0.8
