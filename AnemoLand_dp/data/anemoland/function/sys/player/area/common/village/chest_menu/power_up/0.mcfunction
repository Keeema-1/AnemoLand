
data modify storage temp:_ data.Items set from block ~ ~ ~ Items

data modify storage temp:_ data.Items_after set value []

# execute if data storage temp:_ data.Items[{Slot:0b}] unless data storage temp:_ data.Items[{Slot:0b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.Items[{Slot:0b}] set value {Slot:0b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b}}} 
data modify storage temp:_ data.Items_after append value {Slot:0b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:1b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:2b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:3b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:4b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:5b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:6b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:7b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:8b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 

data modify storage temp:_ data.Items_after append value {Slot:9b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append from storage temp:_ data.Items[{Slot:10b}]
data modify storage temp:_ data.Items_after append value {Slot:11b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":6,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append from storage temp:_ data.Items[{Slot:12b}]
data modify storage temp:_ data.Items_after append from storage temp:_ data.Items[{Slot:13b}]
data modify storage temp:_ data.Items_after append from storage temp:_ data.Items[{Slot:14b}]
data modify storage temp:_ data.Items_after append value {Slot:15b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":7,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:16b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":2,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:17b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":30,"minecraft:custom_name":'{"translate":"anemoland.chest_menu.power_up.power_up","color":"dark_gray","italic":false}',"minecraft:lore":[],"minecraft:custom_data":{chest_menu:1b}}}

data modify storage temp:_ data.Items_after append value {Slot:18b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:19b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:20b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:21b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:22b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:23b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:24b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:25b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 
data modify storage temp:_ data.Items_after append value {Slot:26b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":5,"minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b},"minecraft:hide_tooltip":{}}} 

function anemoland:sys/player/area/common/village/chest_menu/power_up/00

data modify block ~ ~ ~ Items set from storage temp:_ data.Items_after

data remove storage temp:_ data.Items[{components:{"minecraft:custom_data":{chest_menu:1b}}}]
data remove storage temp:_ data.Items[{Slot:10b}]
data remove storage temp:_ data.Items[{Slot:12b}]
data remove storage temp:_ data.Items[{Slot:13b}]
data remove storage temp:_ data.Items[{Slot:14b}]

execute if data storage temp:_ data.Items[0] run function anemoland:sys/player/area/common/village/chest_menu/power_up/drop
