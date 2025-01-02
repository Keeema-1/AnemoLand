
$execute unless data storage temp:_ data.Items[{Slot:12b}].components."minecraft:custom_data"{id:$(id)} run return 1

execute store result score #count temp run data get storage temp:_ data.Items[{Slot:12b}].count

execute store result score #required temp run data get storage temp:_ data.Items[{Slot:10b}].components."minecraft:custom_data".power_up.materials[0].count

execute if score #count temp >= #required temp run scoreboard players set #can_craft temp 1