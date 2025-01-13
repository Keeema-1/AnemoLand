playsound block.anvil.use master @s ~ ~ ~ 1 1

$loot replace block ~ ~ ~ container.10 loot anemoland_contents:$(loot_table)/$(level)
data modify storage temp:_ data.Items_after[{Slot:10b}] set from block ~ ~ ~ Items[{Slot:10b}]


execute store result score #count temp run data get storage temp:_ data.Items[{Slot:12b}].count

execute store result score #required temp run data get storage temp:_ data.Items[{Slot:10b}].components."minecraft:custom_data".power_up.materials[0].count

execute store result storage temp:_ data.Items_after[{Slot:12b}].count int 1 run scoreboard players operation #count temp -= #required temp
execute unless score #count temp matches 1.. run data remove storage temp:_ data.Items_after[{Slot:12b}]