#> anemoland:sys/entity/common/collide/5
#
# 実行者が周囲の @e[tag=mob_root] と近い場合は離れる
#
# @public

tag @s add me
execute at @s facing entity @e[type=#anemoland:mob_core,tag=mob_root,tag=!me,distance=..5,limit=1] feet rotated ~180 0 run function anemoland:sys/entity/common/collide/common
tag @s remove me
