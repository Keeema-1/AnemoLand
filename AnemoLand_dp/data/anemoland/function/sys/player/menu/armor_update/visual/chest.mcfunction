
data modify storage temp:_ data.ArmorItems_temp[2].components."minecraft:lore" append value '""'

execute if data storage temp:_ data.player_storage.equipments.armor_visuality{chest:0b} run return run function anemoland:sys/player/menu/armor_update/visual/chest_invisible

data modify storage temp:_ data.ArmorItems_temp[2].components."minecraft:lore" append value '{"text":"外見装備","italic":false}'
data modify storage temp:_ data.ArmorItems_temp[2].components."minecraft:lore" append from storage temp:_ data.player_storage.equipments.visual_armor1.chest.components."minecraft:custom_name"

data modify storage temp:_ data.ArmorItems_temp[2].id set from storage temp:_ data.player_storage.equipments.visual_armor1.chest.id

execute if data storage temp:_ data.player_storage.equipments.visual_armor1.chest.components."minecraft:equippable" run data modify storage temp:_ data.ArmorItems_temp[2].components."minecraft:equippable" set from storage temp:_ data.player_storage.equipments.visual_armor1.chest.components."minecraft:equippable"
execute unless data storage temp:_ data.player_storage.equipments.visual_armor1.chest.components."minecraft:equippable" run data remove storage temp:_ data.ArmorItems_temp[2].components."minecraft:equippable"
