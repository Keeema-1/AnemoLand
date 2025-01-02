# execute store result score #page temp run data get storage anemoland:settings data.arena.custom.mob1_level.page

# execute unless data storage temp:_ data.Items[{Slot:26b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run scoreboard players add #page temp 1

# execute unless score #page temp matches 1.. run scoreboard players set #page temp 1
# execute unless score #page temp matches ..2 run scoreboard players set #page temp 2

# execute store result storage anemoland:settings data.arena.custom.mob1_level.page int 1 run scoreboard players get #page temp
scoreboard players set #page temp 1

execute if score #page temp matches 1 run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/common/mob_level/page1

execute unless score #click_flag temp matches 1 run data modify storage anemoland:settings data.arena.custom.mob3.level set from storage temp:_ data.selected_level
