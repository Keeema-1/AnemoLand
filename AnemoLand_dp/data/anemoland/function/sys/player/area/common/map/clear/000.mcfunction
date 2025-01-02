
fill ~3.5 0 ~3.5 ~-3.5 7 ~-3.5 air replace barrier

execute positioned ~-4 ~-6 ~-4 run kill @e[tag=cloud,tag=!few_cloud,dx=7,dy=3,dz=7]

execute if entity @s[tag=skip,tag=!cleared] run function anemoland:sys/player/area/common/map/clear/00
