tag @s add cleared

data modify storage temp:_ data.text set from entity @s text
execute as @e[type=marker,tag=area_info,distance=..1] run data modify storage temp:_ data.text set from entity @s data.text.default
data modify entity @s text set from storage temp:_ data.text

function anemoland:sys/player/area/common/map/clear/remove_barrier/0

execute positioned ~-4 ~-6 ~-4 run kill @e[tag=cloud,dx=7,dy=3,dz=7]

# execute positioned ~ ~ ~8 as @e[type=text_display,tag=area_info,tag=!cleared,tag=auto_unlock,distance=..3] at @s run function anemoland:sys/player/area/common/map/clear/000
# execute positioned ~ ~ ~-8 as @e[type=text_display,tag=area_info,tag=!cleared,tag=auto_unlock,distance=..3] at @s run function anemoland:sys/player/area/common/map/clear/000
# execute positioned ~8 ~ ~ as @e[type=text_display,tag=area_info,tag=!cleared,tag=auto_unlock,distance=..3] at @s run function anemoland:sys/player/area/common/map/clear/000
# execute positioned ~-8 ~ ~ as @e[type=text_display,tag=area_info,tag=!cleared,tag=auto_unlock,distance=..3] at @s run function anemoland:sys/player/area/common/map/clear/000
