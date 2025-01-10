#> anemoland_contents:sys/entity/mob/muscleroom/manual/action/backstep/tick
#
# アクション backstep 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/muscleroom/action/backstep/tick

tp @s ~ ~ ~ ~ ~
execute if score @s action_time matches ..20 if score @s action_way matches 0 run tp @s ~ ~ ~ ~4 ~
execute if score @s action_time matches ..20 if score @s action_way matches 1 run tp @s ~ ~ ~ ~-4 ~

execute if score @s action_time matches 5..25 run data modify storage temp:_ data.motion set value {speed:0.6}
execute if score @s action_time matches 5..25 if score @s action_way matches 0 rotated ~ 0 facing ^1 ^ ^-1 run function anemoland:sys/entity/common/motion/0
execute if score @s action_time matches 5..25 if score @s action_way matches 1 rotated ~ 0 facing ^-1 ^ ^-1 run function anemoland:sys/entity/common/motion/0
execute if score @s action_time matches 5..25 if score @s action_way matches 2 rotated ~ 0 facing ^ ^ ^-1 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 60.. run function anemoland_contents:sys/entity/mob/muscleroom/action/backstep/end
