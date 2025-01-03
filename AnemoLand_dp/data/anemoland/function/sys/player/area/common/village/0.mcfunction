execute as @e[type=interaction,tag=npc,distance=..8] run function anemoland:sys/player/area/common/village/npc/0

execute as @e[type=text_display,tag=chest_menu,distance=..8] at @s positioned ~ ~-1 ~ run function anemoland:sys/player/area/common/village/chest_menu/0

execute if predicate anemoland:random_chance/0_1 run function anemoland:sys/player/common/adjust_food_level/0
