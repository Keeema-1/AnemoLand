function anemoland:sys/player/area/common/map/enter
scoreboard players set @s area0 100
scoreboard players set @s area1 1
scoreboard players set @s area2 0
execute positioned 1028.0 0.0 -4.0 run tp @s ~ ~ ~2 180 ~
execute positioned 2560.0 0.0 3584.0 unless entity @a[distance=..128] run function anemoland_contents:sys/area/beta1/field/55/init/0
