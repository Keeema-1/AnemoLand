#> anemoland_contents:sys/entity/mob/martellos/manual/action/backstep/tick
#
# アクション backstep 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/martellos/action/backstep/tick

tp @s ~ ~ ~ ~ ~
execute if score @s action_time matches ..25 run data modify storage temp:_ data.motion set value {speed:0.4}
execute if score @s action_time matches ..25 run execute rotated ~ 0 facing ^ ^ ^-1 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 46.. run function anemoland_contents:sys/entity/mob/martellos/action/backstep/end
