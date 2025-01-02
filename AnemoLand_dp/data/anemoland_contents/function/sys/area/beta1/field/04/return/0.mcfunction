function anemoland:sys/player/area/common/map/enter
scoreboard players set @s area0 100
scoreboard players set @s area1 1
scoreboard players set @s area2 0
execute positioned 1020.0 0.0 36.0 run tp @s ~ ~ ~2 180 ~
