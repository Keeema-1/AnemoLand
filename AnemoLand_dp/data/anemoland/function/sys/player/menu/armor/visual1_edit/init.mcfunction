
function anemoland:sys/player/menu/armor/visual1_edit/init_reset

# data modify storage temp:_ data.selected_set set from storage temp:_ data.player_storage.equipments.visual_armor1

execute positioned ~ -100 ~ summon armor_stand run function anemoland:sys/player/menu/armor/visual1_edit/init_set

data modify storage temp:_ data.player_data.Inventory set from entity @s Inventory

function anemoland:sys/player/menu/armor_update/force
