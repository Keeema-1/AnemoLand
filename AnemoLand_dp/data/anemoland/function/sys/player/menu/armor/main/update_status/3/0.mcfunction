data modify storage temp:_ data.selected_set set from storage temp:_ data.player_storage.equipments.armor3

scoreboard players set #armor.base temp 10
scoreboard players set #armor.equipment temp 0
scoreboard players set #armor.equipment.add temp 0
execute store result score #armor.equipment.add temp run data get storage temp:_ data.selected_set.head.components."minecraft:custom_data".status.armor.base
scoreboard players operation #armor.equipment temp += #armor.equipment.add temp
execute store result score #armor.equipment.add temp run data get storage temp:_ data.selected_set.chest.components."minecraft:custom_data".status.armor.base
scoreboard players operation #armor.equipment temp += #armor.equipment.add temp
execute store result score #armor.equipment.add temp run data get storage temp:_ data.selected_set.legs.components."minecraft:custom_data".status.armor.base
scoreboard players operation #armor.equipment temp += #armor.equipment.add temp
execute store result score #armor.equipment.add temp run data get storage temp:_ data.selected_set.feet.components."minecraft:custom_data".status.armor.base
scoreboard players operation #armor.equipment temp += #armor.equipment.add temp
scoreboard players operation #armor temp = #armor.base temp
scoreboard players operation #armor temp += #armor.equipment temp

item modify entity @s inventory.5 anemoland:player_menu/status/armor
item modify entity @s inventory.6 anemoland:player_menu/status/armor

scoreboard players set #elemental_resistance temp 0
scoreboard players set #temp.add temp 0
execute store result score #temp.add temp run data get storage temp:_ data.selected_set.head.components."minecraft:custom_data".status.elemental_resistance.fire
scoreboard players operation #elemental_resistance temp -= #temp.add temp
scoreboard players set #temp.add temp 0
execute store result score #temp.add temp run data get storage temp:_ data.selected_set.chest.components."minecraft:custom_data".status.elemental_resistance.fire
scoreboard players operation #elemental_resistance temp -= #temp.add temp
scoreboard players set #temp.add temp 0
execute store result score #temp.add temp run data get storage temp:_ data.selected_set.legs.components."minecraft:custom_data".status.elemental_resistance.fire
scoreboard players operation #elemental_resistance temp -= #temp.add temp
scoreboard players set #temp.add temp 0
execute store result score #temp.add temp run data get storage temp:_ data.selected_set.feet.components."minecraft:custom_data".status.elemental_resistance.fire
scoreboard players operation #elemental_resistance temp -= #temp.add temp
execute unless score #elemental_resistance temp matches 0 run item modify entity @s inventory.5 anemoland:player_menu/status/elemental_resistance/fire
execute unless score #elemental_resistance temp matches 0 run item modify entity @s inventory.6 anemoland:player_menu/status/elemental_resistance/fire

function anemoland:sys/player/menu/armor/main/update_status/3/skill/0
