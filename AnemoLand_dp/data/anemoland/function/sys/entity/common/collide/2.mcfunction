
tag @s add me
execute at @s facing entity @e[type=#anemoland:mob_core,tag=mob_root,tag=!me,distance=..2,limit=1] feet rotated ~180 0 run function anemoland:sys/entity/common/collide/common
tag @s remove me
