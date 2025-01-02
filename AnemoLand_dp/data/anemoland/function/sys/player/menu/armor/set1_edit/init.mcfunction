
function anemoland:sys/player/menu/armor/set1_edit/init_update

data modify storage temp:_ data.selected_set set from storage temp:_ data.player_storage.equipments.armor1

execute positioned ~ -80 ~ summon armor_stand run function anemoland:sys/player/menu/armor/set1_edit/init_

# tellraw @a {"entity":"@s","nbt":"Inventory[{Slot:103b}]"}

data modify storage temp:_ data.player_data.Inventory set from entity @s Inventory

function anemoland:sys/player/menu/armor_update/force
