playsound ui.button.click master @a ~ ~ ~ 0.3 1

data modify storage temp:_ data.drop_item set from storage temp:_ data.player_data.Inventory[{Slot:15b}]
execute if data storage temp:_ data.drop_item.id run function anemoland:sys/common/drop_item/0

scoreboard players set #click_flag temp 1

scoreboard players reset #temp temp
execute if data storage temp:_ data.player_storage.equipments.armor_visuality{legs:0b} run scoreboard players set #temp temp 1
execute if score #temp temp matches 1 run data modify storage temp:_ data.player_storage.equipments.armor_visuality.legs set value 1b
execute unless score #temp temp matches 1 run data modify storage temp:_ data.player_storage.equipments.armor_visuality.legs set value 0b

function anemoland:sys/player/menu/armor/visual1_edit/init

function anemoland:sys/player/menu/armor_update/force

return 1