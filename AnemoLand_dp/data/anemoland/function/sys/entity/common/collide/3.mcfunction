#> anemoland:sys/entity/common/collide/3
#
# 実行者が周囲の @e[tag=mob_root] と近い場合は離れる
#
# @public

tag @s add me
execute if entity @s[tag=!boss] at @s facing entity @e[type=#anemoland:mob_core,tag=mob_root,tag=!me,distance=..3,limit=1] feet rotated ~180 0 run function anemoland:sys/entity/common/collide/common
execute if entity @s[tag=boss] at @s facing entity @e[type=#anemoland:mob_core,tag=mob_root,tag=boss,tag=!me,distance=..3,limit=1] feet rotated ~180 0 run function anemoland:sys/entity/common/collide/common
tag @s remove me
