#> anemoland_contents:sys/area/beta1/branch
#
# マップ・村・フィールドで分岐
#
# @within function anemoland_core:sys/area/branch

execute if score @s area2 matches 1.. run return run function anemoland_contents:sys/area/beta1/field/branch
execute if score @s area2 matches 0 run return run function anemoland_contents:sys/area/beta1/map/0
execute if score @s area2 matches ..-1 run return run function anemoland_contents:sys/area/beta1/village/branch
