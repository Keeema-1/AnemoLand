# scoreboard players reset #event_id temp
# execute if entity @s[tag=event.1] run scoreboard players set #event_id temp 1
# execute if entity @s[tag=event.2] run scoreboard players set #event_id temp 2
# execute if entity @s[tag=event.3] run scoreboard players set #event_id temp 3
# execute as @e[type=text_display,tag=area_info,distance=..4] at @s run function anemoland:sys/player/area/common/map/update_display/00
kill @s
# tellraw @a "clear"