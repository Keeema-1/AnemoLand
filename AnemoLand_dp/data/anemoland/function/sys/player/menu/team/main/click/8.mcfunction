playsound ui.button.click master @a ~ ~ ~ 0.3 1
scoreboard players set @s menu0 5
scoreboard players set @s menu1 1

data modify storage temp:_ data.drop_item set from storage temp:_ data.player_data.Inventory[{Slot:17b}]
execute if data storage temp:_ data.drop_item.id run function anemoland:sys/common/drop_item/0

scoreboard players set #click_flag temp 1

function anemoland:sys/player/menu/team/supporter/init
