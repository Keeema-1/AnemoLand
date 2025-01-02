execute store result score #page temp run data get storage anemoland:settings data.arena.custom.mob4_type.page

execute unless data storage temp:_ data.Items[{Slot:18b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run scoreboard players remove #page temp 1
execute unless data storage temp:_ data.Items[{Slot:26b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run scoreboard players add #page temp 1

execute unless score #page temp matches 1.. run scoreboard players set #page temp 1
execute unless score #page temp matches ..3 run scoreboard players set #page temp 3

execute store result storage anemoland:settings data.arena.custom.mob4_type.page int 1 run scoreboard players get #page temp

data modify storage temp:_ data.selected_mob_old set from storage anemoland:settings data.arena.custom.mob4.type
data modify storage temp:_ data.selected_mob set from storage anemoland:settings data.arena.custom.mob4.type

execute if score #page temp matches 1 run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/common/mob_type/page1
execute if score #page temp matches 2 run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/common/mob_type/page2
execute if score #page temp matches 3 run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/common/mob_type/page3

execute unless score #click_flag temp matches 1 run data modify storage anemoland:settings data.arena.custom.mob4.type set from storage temp:_ data.selected_mob
