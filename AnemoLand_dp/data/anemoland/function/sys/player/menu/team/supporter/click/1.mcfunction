playsound ui.button.click master @a ~ ~ ~ 0.3 1

data modify storage temp:_ data.drop_item set from storage temp:_ data.player_data.Inventory[{Slot:10b}]
execute if data storage temp:_ data.drop_item.id run function anemoland:sys/common/drop_item/0

scoreboard players set #click_flag temp 1

scoreboard players reset #temp temp
execute if data storage temp:_ data.player_storage.supporters.1{id:"girl2"} run scoreboard players set #temp temp 1
execute if score #temp temp matches 1 run data modify storage temp:_ data.player_storage.supporters.1 set value {}
execute unless score #temp temp matches 1 run data modify storage temp:_ data.player_storage.supporters.1 set value {id:"girl2"}

function anemoland:sys/player/menu/team/supporter/init