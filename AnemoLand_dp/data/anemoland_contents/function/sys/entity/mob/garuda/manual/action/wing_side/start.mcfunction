#> anemoland_contents:sys/entity/mob/garuda/manual/action/wing_side/start
#
# アクション wing_side の開始時に実行される
# このファイルは初回のみ自動生成される
# アクション開始時の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/garuda/action/wing_side/start

# 向きを決定
    function anemoland:sys/entity/common/target_direction/is_leftside
    execute if score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 0
    execute unless score #target_is_leftside temp matches 1 run scoreboard players set @s action_way 1
    scoreboard players set @s action_way 0

execute if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/garuda/animation/wing_left1
execute if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/garuda/animation/wing_right1
