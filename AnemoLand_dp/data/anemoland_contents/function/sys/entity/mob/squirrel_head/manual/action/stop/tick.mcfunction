#> anemoland_contents:sys/entity/mob/squirrel_head/manual/action/stop/tick
#
# アクション stop 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/squirrel_head/action/stop/tick

tp @s ~ ~ ~ ~ ~

function anemoland:sys/entity/common/collide/2

data modify entity @s Motion[1] set value -0.1

execute if score #hostile_target.exist temp matches 1 if entity @s[tag=angry] run function anemoland_contents:sys/entity/mob/squirrel_head/action/stop/end
execute if score #hostile_target.exist temp matches 1 if score @s action_time matches 10.. run function anemoland_contents:sys/entity/mob/squirrel_head/action/stop/end
