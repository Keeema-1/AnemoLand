
execute as @e[type=text_display,tag=area_info,distance=..8] at @s run function anemoland:sys/player/area/common/map/area_info/0

execute if predicate anemoland:time_check/period/3t positioned ~ ~-4 ~ run particle end_rod

execute if predicate anemoland:time_check/period/3t positioned ~1 ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ barrier run particle block_marker{block_state: {Name: "minecraft:barrier"}} ~ -4 ~
execute if predicate anemoland:time_check/period/3t positioned ~-1 ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ barrier run particle block_marker{block_state: {Name: "minecraft:barrier"}} ~ -4 ~
execute if predicate anemoland:time_check/period/3t positioned ~ ~ ~1 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ barrier run particle block_marker{block_state: {Name: "minecraft:barrier"}} ~ -4 ~
execute if predicate anemoland:time_check/period/3t positioned ~ ~ ~-1 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ barrier run particle block_marker{block_state: {Name: "minecraft:barrier"}} ~ -4 ~

execute as @e[type=marker,tag=clear_flag,distance=..4] at @s if loaded ~ ~ ~ run function anemoland:sys/player/area/common/map/clear/0
execute as @e[type=marker,tag=display_updater,distance=..32] at @s if loaded ~ ~ ~ run function anemoland:sys/player/area/common/map/update_display/0
execute as @e[type=marker,tag=unlock_flag,distance=..32] at @s if loaded ~ ~ ~ run function anemoland:sys/player/area/common/map/clear/1

execute if predicate anemoland:random_chance/0_1 run function anemoland:sys/player/common/adjust_food_level/0