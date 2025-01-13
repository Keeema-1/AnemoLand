scoreboard players set @s area0 100
scoreboard players set @s area1 1
scoreboard players set @s area2 4
tp @s 1024.0 0.0 -1536.0 180 30
execute at @s run function anemoland:sys/player/area/common/village/enter
