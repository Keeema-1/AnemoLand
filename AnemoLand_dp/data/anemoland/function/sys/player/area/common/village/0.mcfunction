execute as @e[type=interaction,tag=shop_item,distance=..8] run function anemoland:sys/player/area/common/village/shop_item/0
execute as @e[type=interaction,tag=npc,distance=..8] run function anemoland:sys/player/area/common/village/npc/0

execute if predicate anemoland:random_chance/0_1 run function anemoland:sys/player/common/adjust_food_level/0
