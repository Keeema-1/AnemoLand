execute unless data storage temp:_ data.player_data.Inventory[{Slot:12b}] run return 1
execute if data storage temp:_ data.player_data.Inventory[{Slot:12b,components:{"minecraft:custom_data":{menu:1b}}}] run return 1
data modify storage temp:_ data.drop_item set from storage temp:_ data.player_data.Inventory[{Slot:12b}]

function anemoland:sys/player/menu/common/drop_item/common