#> anemoland_contents:sys/entity/mob/king_boar/manual/action/target/tick
#
# アクション target 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/king_boar/action/target/tick

function anemoland:sys/entity/common/target_direction/is_leftside
function anemoland:sys/entity/common/target_direction/is_front

execute if score #target_is_front temp matches 1 run return run function anemoland_contents:sys/entity/mob/king_boar/action/target/end

execute if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-5 0
execute unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~5 0

execute if score @s action_time matches 100.. if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-4 0
execute if score @s action_time matches 100.. unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~4 0

execute if score @s action_time matches 40..80 if predicate anemoland:random_chance/0_02 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..5] run return run function anemoland_contents:sys/entity/mob/king_boar/action/dive/start
execute if score @s action_time matches 81.. if predicate anemoland:random_chance/0_05 if entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..5] run return run function anemoland_contents:sys/entity/mob/king_boar/action/dive/start
