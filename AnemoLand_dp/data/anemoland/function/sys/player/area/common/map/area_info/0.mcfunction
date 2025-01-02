execute if entity @s[tag=!active] if entity @a[distance=..3.5] run function anemoland:sys/player/area/common/map/area_info/activate
execute if entity @s[tag=active] unless entity @a[distance=..4] run function anemoland:sys/player/area/common/map/area_info/deactivate
