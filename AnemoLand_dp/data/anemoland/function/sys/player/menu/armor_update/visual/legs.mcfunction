data modify storage temp:_ data.ArmorItems_temp[1].components."minecraft:lore" append value '""'

execute if data storage temp:_ data.player_storage.equipments.armor_visuality{legs:0b} run return run function anemoland:sys/player/menu/armor_update/visual/legs_invisible

data modify storage temp:_ data.ArmorItems_temp[1].components."minecraft:lore" append value '{"text":"外見装備","italic":false}'
data modify storage temp:_ data.ArmorItems_temp[1].components."minecraft:lore" append from storage temp:_ data.player_storage.equipments.visual_armor1.legs.components."minecraft:custom_name"

data modify storage temp:_ data.ArmorItems_temp[1].id set from storage temp:_ data.player_storage.equipments.visual_armor1.legs.id

execute if data storage temp:_ data.player_storage.equipments.visual_armor1.legs.components."minecraft:equippable" run data modify storage temp:_ data.ArmorItems_temp[1].components."minecraft:equippable" set from storage temp:_ data.player_storage.equipments.visual_armor1.legs.components."minecraft:equippable"
execute unless data storage temp:_ data.player_storage.equipments.visual_armor1.legs.components."minecraft:equippable" run data remove storage temp:_ data.ArmorItems_temp[1].components."minecraft:equippable"
