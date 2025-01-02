
execute if score #selected_set temp matches 1 run data modify storage temp:_ data.selected_set set from storage temp:_ data.player_storage.equipments.armor1
execute if score #selected_set temp matches 2 run data modify storage temp:_ data.selected_set set from storage temp:_ data.player_storage.equipments.armor2
execute if score #selected_set temp matches 3 run data modify storage temp:_ data.selected_set set from storage temp:_ data.player_storage.equipments.armor3

item modify entity @s inventory.0 anemoland:player_menu/main/status/gold

execute store result score #armor temp run attribute @s armor get 10.01
execute store result score #armor.base temp run attribute @s armor base get 10.01
scoreboard players operation #armor.equipment temp = #armor temp
scoreboard players operation #armor.equipment temp -= #armor.base temp
item modify entity @s inventory.0 anemoland:player_menu/main/status/armor

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
execute unless score #elemental_resistance temp matches 0 run item modify entity @s inventory.0 anemoland:player_menu/main/status/elemental_resistance/fire

function anemoland:sys/player/menu/main/update_status/skill/0
