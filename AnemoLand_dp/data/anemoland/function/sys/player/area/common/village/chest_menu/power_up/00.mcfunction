
execute unless data storage temp:_ data.Items[{Slot:10b}].components."minecraft:custom_data".power_up.materials run return 1

data modify storage temp:_ data.power_up_data set value {}
data modify storage temp:_ data.power_up_data.loot_table set from storage temp:_ data.Items[{Slot:10b}].components."minecraft:custom_data".loot_table

data modify storage temp:_ data.power_up_data.level set from storage temp:_ data.Items[{Slot:10b}].components."minecraft:custom_data".status.level
execute store result score #next_level temp run data get storage temp:_ data.power_up_data.level
execute store result score #add_level temp run data get storage temp:_ data.Items[{Slot:10b}].components."minecraft:custom_data".power_up.add_level
execute store result storage temp:_ data.power_up_data.level int 1 run scoreboard players operation #next_level temp += #add_level temp

# tellraw @a {"storage":"temp:_","nbt":"data.power_up_data"}

function anemoland:sys/player/area/common/village/chest_menu/power_up/000 with storage temp:_ data.power_up_data
data modify storage temp:_ data.Items_after[{Slot:16b}] set from block ~ ~ ~ Items[{Slot:16b}]
data modify storage temp:_ data.Items_after[{Slot:16b}].components."minecraft:custom_data" set value {chest_menu:1b}



data modify storage temp:_ data.material_loot_table.loot_table set from storage temp:_ data.Items[{Slot:10b}].components."minecraft:custom_data".power_up.materials[0].loot_table

function anemoland:sys/player/area/common/village/chest_menu/power_up/001 with storage temp:_ data.material_loot_table
data modify storage temp:_ data.Items_after[{Slot:3b}] set from block ~ ~ ~ Items[{Slot:3b}]
data modify storage temp:_ data.Items_after[{Slot:3b}].components."minecraft:custom_data" set value {chest_menu:1b}
data modify storage temp:_ data.Items_after[{Slot:3b}].components."minecraft:lore" set value ['[{"text":"  "},{"translate":"anemoland.chest_menu.power_up.materials","color":"white","italic":false}]']
data modify storage temp:_ data.Items_after[{Slot:3b}].count set from storage temp:_ data.Items[{Slot:10b}].components."minecraft:custom_data".power_up.materials[0].count


scoreboard players reset #can_craft temp

data modify storage temp:_ data.craft_check.id set from storage temp:_ data.Items[{Slot:10b}].components."minecraft:custom_data".power_up.materials[0].id

execute if data storage temp:_ data.Items[{Slot:12b}].count run function anemoland:sys/player/area/common/village/chest_menu/power_up/craft_check with storage temp:_ data.craft_check

execute unless score #can_craft temp matches 1.. run return 1

data modify storage temp:_ data.Items_after[{Slot:17b}] merge value {components:{"minecraft:custom_model_data":29,"minecraft:custom_name":'{"translate":"anemoland.chest_menu.power_up.power_up","italic":false}',"minecraft:lore":[],"minecraft:custom_data":{chest_menu:1b}}}
execute unless data storage temp:_ data.Items[{Slot:17b}] run function anemoland:sys/player/area/common/village/chest_menu/power_up/craft with storage temp:_ data.power_up_data
