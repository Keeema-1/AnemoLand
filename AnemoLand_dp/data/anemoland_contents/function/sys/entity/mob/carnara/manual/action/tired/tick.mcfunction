#> anemoland_contents:sys/entity/mob/carnara/manual/action/tired/tick
#
# アクション tired 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/carnara/action/tired/tick

tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 55..65 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 0.3 0
execute if score @s action_time matches 145..155 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 0.3 0

execute if score @s action_time matches 180.. run function anemoland_contents:sys/entity/mob/carnara/action/tired/end
