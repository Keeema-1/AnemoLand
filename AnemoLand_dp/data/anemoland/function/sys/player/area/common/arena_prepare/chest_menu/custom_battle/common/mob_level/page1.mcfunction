
execute unless data storage temp:_ data.Items[{Slot:18b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_level set value 5
execute unless data storage temp:_ data.Items[{Slot:19b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_level set value 10
execute unless data storage temp:_ data.Items[{Slot:20b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_level set value 15
execute if data storage anemoland:progress data.rank{silver:1b} unless data storage temp:_ data.Items[{Slot:21b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_level set value 20
execute if data storage anemoland:progress data.rank{silver:1b} unless data storage temp:_ data.Items[{Slot:22b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_level set value 25
execute if data storage anemoland:progress data.rank{gold:1b} unless data storage temp:_ data.Items[{Slot:23b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_level set value 30
execute if data storage anemoland:progress data.rank{gold:1b} unless data storage temp:_ data.Items[{Slot:24b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_level set value 35
execute if data storage anemoland:progress data.rank{gold:1b} unless data storage temp:_ data.Items[{Slot:25b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_level set value 40

data modify storage temp:_ data.Items_after append value {Slot:18b,id:"black_dye",count:5,components:{"minecraft:custom_model_data":121,"minecraft:custom_name":'{"text":"Lv.5","italic":false}',"minecraft:custom_data":{chest_menu:1b}}} 
data modify storage temp:_ data.Items_after append value {Slot:19b,id:"black_dye",count:10,components:{"minecraft:custom_model_data":121,"minecraft:custom_name":'{"text":"Lv.10","italic":false}',"minecraft:custom_data":{chest_menu:1b}}} 
data modify storage temp:_ data.Items_after append value {Slot:20b,id:"black_dye",count:15,components:{"minecraft:custom_model_data":121,"minecraft:custom_name":'{"text":"Lv.15","italic":false}',"minecraft:custom_data":{chest_menu:1b}}} 
data modify storage temp:_ data.Items_after append value {Slot:21b,id:"black_dye",count:20,components:{"minecraft:custom_model_data":121,"minecraft:custom_name":'{"text":"Lv.20","italic":false}',"minecraft:custom_data":{chest_menu:1b}}} 
data modify storage temp:_ data.Items_after append value {Slot:22b,id:"black_dye",count:25,components:{"minecraft:custom_model_data":121,"minecraft:custom_name":'{"text":"Lv.25","italic":false}',"minecraft:custom_data":{chest_menu:1b}}} 
data modify storage temp:_ data.Items_after append value {Slot:23b,id:"black_dye",count:30,components:{"minecraft:custom_model_data":121,"minecraft:custom_name":'{"text":"Lv.30","italic":false}',"minecraft:custom_data":{chest_menu:1b}}} 
data modify storage temp:_ data.Items_after append value {Slot:24b,id:"black_dye",count:35,components:{"minecraft:custom_model_data":121,"minecraft:custom_name":'{"text":"Lv.35","italic":false}',"minecraft:custom_data":{chest_menu:1b}}} 
data modify storage temp:_ data.Items_after append value {Slot:25b,id:"black_dye",count:40,components:{"minecraft:custom_model_data":121,"minecraft:custom_name":'{"text":"Lv.40","italic":false}',"minecraft:custom_data":{chest_menu:1b}}} 

data modify storage temp:_ data.Items_after append value {Slot:26b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":24,"minecraft:custom_name":'{"translate":"common.page_forward","italic":false,"color":"dark_gray"}',"minecraft:custom_data":{chest_menu:1b}}} 
