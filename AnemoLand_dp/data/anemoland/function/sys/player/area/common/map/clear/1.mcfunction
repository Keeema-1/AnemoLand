execute as @e[type=text_display,tag=area_info,distance=..4] at @s run function anemoland:sys/player/area/common/map/clear/10
kill @s
# tellraw @a "clear"