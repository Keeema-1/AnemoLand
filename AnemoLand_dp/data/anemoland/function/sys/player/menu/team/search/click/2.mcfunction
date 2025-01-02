playsound ui.button.click master @a ~ ~ ~ 0.3 1

data modify storage temp:_ data.drop_item set from storage temp:_ data.player_data.Inventory[{Slot:11b}]
execute if data storage temp:_ data.drop_item.id run function anemoland:sys/common/drop_item/0

scoreboard players set #click_flag temp 1

function anemoland:sys/player/menu/team/search/join/2

function anemoland:sys/player/menu/team/search/init
