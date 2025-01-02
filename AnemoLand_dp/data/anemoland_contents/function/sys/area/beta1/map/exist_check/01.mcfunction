function anemoland_contents:sys/area/beta1/map/exist_check/010
execute if entity @s[tag=!player_exist] positioned ~ ~-1 ~ run kill @e[type=text_display,tag=player_exist_display,distance=..2]
