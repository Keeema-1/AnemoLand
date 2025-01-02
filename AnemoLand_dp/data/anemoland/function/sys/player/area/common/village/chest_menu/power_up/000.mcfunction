
$loot replace block ~ ~ ~ container.16 loot anemoland:$(loot_table)/$(level)
# $tellraw @a "$(loot_table)"
# $tellraw @a "$(level)"

data modify storage temp:_ data.lore_after set from block ~ ~ ~ Items[{Slot:16b}].components."minecraft:lore"
data modify storage temp:_ data.lore_after set from storage temp:_ data.Items[{Slot:10b}].components."minecraft:lore"
# data modify storage temp:_ data.lore_after append value '{"text":""}'
data modify storage temp:_ data.lore_after append value '{"text":"-------↓-------","color":"yellow","italic":false}'
# data modify storage temp:_ data.lore_after append value '{"text":""}'
data modify storage temp:_ data.lore_after append from block ~ ~ ~ Items[{Slot:16b}].components."minecraft:lore"[]

data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:lore" set from storage temp:_ data.lore_after
