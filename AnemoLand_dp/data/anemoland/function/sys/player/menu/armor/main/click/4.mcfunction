function anemoland:sys/player/menu/common/click

scoreboard players set #selected_set temp 2
data modify storage temp:_ data.player_storage.equipments.selected_set set value 2
data modify storage temp:_ data.player_storage.equipments.active_armor set value {}
data modify storage temp:_ data.player_storage.equipments.active_armor set from storage temp:_ data.player_storage.equipments.armor2

function anemoland:sys/player/common/player_storage/write

function anemoland:sys/player/menu/armor/main/init

function anemoland:sys/player/menu/armor_update/force

playsound item.armor.equip_leather player @a ~ ~ ~ 2 1
