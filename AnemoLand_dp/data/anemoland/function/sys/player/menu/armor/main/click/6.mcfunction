# playsound ui.button.click master @a ~ ~ ~ 0.3 1

data modify storage temp:_ data.drop_item set from storage temp:_ data.player_data.Inventory[{Slot:15b}]
execute if data storage temp:_ data.drop_item.id run function anemoland:sys/common/drop_item/0

scoreboard players set #click_flag temp 1

scoreboard players set #selected_set temp 3
data modify storage temp:_ data.player_storage.equipments.selected_set set value 3
data modify storage temp:_ data.player_storage.equipments.active_armor set value {}
data modify storage temp:_ data.player_storage.equipments.active_armor set from storage temp:_ data.player_storage.equipments.armor3

function anemoland:sys/player/common/player_storage/write

function anemoland:sys/player/menu/armor/main/init

function anemoland:sys/player/menu/armor_update/force

playsound item.armor.equip_leather player @a ~ ~ ~ 2 1

return 1