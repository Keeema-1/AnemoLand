
data modify storage temp:_ data.ArmorItems_temp[0].components."minecraft:lore" append value '""'

execute if data storage temp:_ data.player_storage.equipments.armor_visuality{feet:0b} run return run function anemoland:sys/player/menu/armor_update/visual/feet_invisible

data modify storage temp:_ data.ArmorItems_temp[0].components."minecraft:lore" append value '{"text":"外見装備","italic":false}'
data modify storage temp:_ data.ArmorItems_temp[0].components."minecraft:lore" append from storage temp:_ data.player_storage.equipments.visual_armor1.feet.components."minecraft:custom_name"

data modify storage temp:_ data.ArmorItems_temp[0].id set from storage temp:_ data.player_storage.equipments.visual_armor1.feet.id

execute if data storage temp:_ data.player_storage.equipments.visual_armor1.feet.components."minecraft:equippable" run data modify storage temp:_ data.ArmorItems_temp[0].components."minecraft:equippable" set from storage temp:_ data.player_storage.equipments.visual_armor1.feet.components."minecraft:equippable"
execute unless data storage temp:_ data.player_storage.equipments.visual_armor1.feet.components."minecraft:equippable" run data remove storage temp:_ data.ArmorItems_temp[0].components."minecraft:equippable"
