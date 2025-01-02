playsound ui.button.click master @a ~ ~ ~ 0.3 1

data modify storage temp:_ data.drop_item set from storage temp:_ data.player_data.Inventory[{Slot:12b}]
execute if data storage temp:_ data.drop_item.id run function anemoland:sys/common/drop_item/0

scoreboard players set #click_flag temp 1

scoreboard players set #temp temp 1
execute if data storage anemoland:settings data.text_speed store result score #temp temp run data get storage anemoland:settings data.text_speed
scoreboard players add #temp temp 1
execute if score #temp temp matches 3 run data modify storage anemoland:settings data.text_speed set value 0b
execute if score #temp temp matches 1 run data modify storage anemoland:settings data.text_speed set value 1b
execute if score #temp temp matches 2 run data modify storage anemoland:settings data.text_speed set value 2b

function anemoland:sys/player/menu/setting/main/init
