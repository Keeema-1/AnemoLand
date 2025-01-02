
data modify storage temp:_ data.Items set from block ~ ~ ~ Items
data modify storage temp:_ data.Items_after set from storage temp:_ data.Items

execute if data storage temp:_ data.Items[{Slot:26b}] run data modify storage temp:_ data.Items_after[{Slot:26b}] merge value {id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":31,"minecraft:custom_name":'{"text":"売却する","italic":false}',"minecraft:custom_data":{chest_menu:1b}}} 
execute unless data storage temp:_ data.Items[{Slot:26b}] run data modify storage temp:_ data.Items_after append value {Slot:26b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":31,"minecraft:custom_name":'{"text":"売却する","italic":false}',"minecraft:custom_data":{chest_menu:1b}}}

data modify block ~ ~ ~ Items set from storage temp:_ data.Items_after

execute if data storage temp:_ data.Items[{Slot:26b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run return 1

# playsound ui.button.click master @a ~ ~ ~ 1 1

data modify storage temp:_ data.drop_item set from storage temp:_ data.Items[{Slot:26b}]
execute if data storage temp:_ data.Items[{Slot:26b}] run function anemoland:sys/player/menu/common/drop_item/common

data remove storage temp:_ data.Items[{Slot:26b}]
execute unless data storage temp:_ data.Items[0] run return 1

# sell

scoreboard players set #sell_price_total temp 0

function anemoland:sys/player/area/common/village/chest_menu/sell/sell

# tellraw @a {"score":{"name":"#sell_price_total","objective":"temp"}}

playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2

data modify storage temp:_ data.sell_price set value {}
execute store result storage temp:_ data.sell_price.gold int 1 run scoreboard players get #sell_price_total temp

function anemoland:sys/player/area/common/village/chest_menu/sell/gold with storage temp:_ data.sell_price

data modify block ~ ~ ~ Items set value [{Slot:26b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":31,"minecraft:custom_name":'{"text":"売却する","italic":false}',"minecraft:custom_data":{chest_menu:1b}}}]
