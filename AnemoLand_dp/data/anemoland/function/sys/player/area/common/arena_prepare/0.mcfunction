
execute at @e[type=text_display,tag=chest_menu,tag=custom_battle,distance=..32] positioned ~ ~-1 ~ run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/0
# function anemoland:sys/player/area/common/arena_prepare/book/update

execute if data storage anemoland:settings data.arena.active positioned ~ ~ ~-16 if entity @s[distance=..6] run function anemoland:sys/player/area/common/arena_prepare/00
execute if data storage anemoland:settings data.arena.active positioned ~ ~ ~-16 unless entity @s[distance=..6] run title @s actionbar ""
