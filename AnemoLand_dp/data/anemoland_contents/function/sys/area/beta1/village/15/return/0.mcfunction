function anemoland:sys/player/area/common/map/enter
scoreboard players set @s area0 100
scoreboard players set @s area1 1
scoreboard players set @s area2 0
execute positioned 1028.0 0.0 28.0 run tp @s ~ ~ ~2 180 ~
