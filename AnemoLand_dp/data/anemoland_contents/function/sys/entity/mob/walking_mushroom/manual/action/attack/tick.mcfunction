#> anemoland_contents:sys/entity/mob/walking_mushroom/manual/action/attack/tick
#
# アクション attack 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/walking_mushroom/tick/action/attack/tick

execute if score @s action_time matches 15..20 run function anemoland_contents:sys/entity/mob/walking_mushroom/attack/attack/0

execute if score @s action_time matches 40.. run return run function anemoland_contents:sys/entity/mob/walking_mushroom/tick/action/attack/end
execute if entity @s[tag=damaged] run return run function anemoland_contents:sys/entity/mob/walking_mushroom/tick/action/attack/end
