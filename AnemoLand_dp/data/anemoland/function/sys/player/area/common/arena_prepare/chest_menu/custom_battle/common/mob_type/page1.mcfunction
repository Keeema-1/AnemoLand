data modify storage temp:_ data.Items_after append value {Slot:18b,id:"knowledge_book",count:1,components:{"minecraft:item_model":"anemoland:gui/icon/banned","minecraft:custom_name":'{"translate":"anemoland.common.page_back","italic":false,"color":"gray"}',"minecraft:custom_data":{chest_menu:1b}}} 

execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} unless data storage temp:_ data.Items[{Slot:19b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_mob set value {id:"walking_mushroom","minecraft:item_model":"anemoland:entity/walking_mushroom/icon"}
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} unless data storage temp:_ data.Items[{Slot:19b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if data storage temp:_ data.selected_mob_old{id:"walking_mushroom"} run data modify storage temp:_ data.selected_mob set value {}
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run data modify storage temp:_ data.Items_after append value {Slot:19b,id:"green_dye",count:1,components:{"minecraft:item_model":"anemoland:entity/walking_mushroom/icon","minecraft:custom_name":'{"translate":"anemoland.mob.walking_mushroom.default.name","italic":false}',"lore":['{"text":"  モブ","color":"gray","italic":false}'],"minecraft:custom_data":{chest_menu:1b}}} 
execute unless data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run data modify storage temp:_ data.Items_after append value {Slot:19b,id:"knowledge_book",count:1,components:{"minecraft:item_model":"anemoland:gui/icon/locked","minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b}}} 

execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} unless data storage temp:_ data.Items[{Slot:20b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_mob set value {id:"boar","minecraft:item_model":"anemoland:entity/boar/icon"}
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} unless data storage temp:_ data.Items[{Slot:20b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if data storage temp:_ data.selected_mob_old{id:"boar"} run data modify storage temp:_ data.selected_mob set value {}
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} run data modify storage temp:_ data.Items_after append value {Slot:20b,id:"green_dye",count:1,components:{"minecraft:item_model":"anemoland:entity/boar/icon","minecraft:custom_name":'{"translate":"anemoland.mob.boar.default.name","italic":false}',"lore":['{"text":"  モブ","color":"gray","italic":false}'],"minecraft:custom_data":{chest_menu:1b}}} 
execute unless data storage anemoland:progress data.mob_list.boar{unlock:1b} run data modify storage temp:_ data.Items_after append value {Slot:20b,id:"knowledge_book",count:1,components:{"minecraft:item_model":"anemoland:gui/icon/locked","minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b}}} 

execute if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} unless data storage temp:_ data.Items[{Slot:21b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_mob set value {id:"squirrel","minecraft:item_model":"anemoland:entity/squirrel/icon"}
execute if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} unless data storage temp:_ data.Items[{Slot:21b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if data storage temp:_ data.selected_mob_old{id:"squirrel"} run data modify storage temp:_ data.selected_mob set value {}
execute if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run data modify storage temp:_ data.Items_after append value {Slot:21b,id:"green_dye",count:1,components:{"minecraft:item_model":"anemoland:entity/squirrel/icon","minecraft:custom_name":'{"translate":"anemoland.mob.squirrel.default.name","italic":false}',"lore":['{"text":"  モブ","color":"gray","italic":false}'],"minecraft:custom_data":{chest_menu:1b}}} 
execute unless data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run data modify storage temp:_ data.Items_after append value {Slot:21b,id:"knowledge_book",count:1,components:{"minecraft:item_model":"anemoland:gui/icon/locked","minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b}}} 

execute if data storage anemoland:progress data.mob_list.garapas{unlock:1b} unless data storage temp:_ data.Items[{Slot:22b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_mob set value {id:"garapas","minecraft:item_model":"anemoland:entity/garapas/icon"}
execute if data storage anemoland:progress data.mob_list.garapas{unlock:1b} unless data storage temp:_ data.Items[{Slot:22b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if data storage temp:_ data.selected_mob_old{id:"garapas"} run data modify storage temp:_ data.selected_mob set value {}
execute if data storage anemoland:progress data.mob_list.garapas{unlock:1b} run data modify storage temp:_ data.Items_after append value {Slot:22b,id:"green_dye",count:1,components:{"minecraft:item_model":"anemoland:entity/garapas/icon","minecraft:custom_name":'{"translate":"anemoland.mob.garapas.default.name","italic":false}',"lore":['{"text":"  モブ","color":"gray","italic":false}'],"minecraft:custom_data":{chest_menu:1b}}} 
execute unless data storage anemoland:progress data.mob_list.garapas{unlock:1b} run data modify storage temp:_ data.Items_after append value {Slot:22b,id:"knowledge_book",count:1,components:{"minecraft:item_model":"anemoland:gui/icon/locked","minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b}}} 

execute if data storage anemoland:progress data.mob_list.spider{unlock:1b} unless data storage temp:_ data.Items[{Slot:23b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_mob set value {id:"spider","minecraft:item_model":"anemoland:entity/spider/icon"}
execute if data storage anemoland:progress data.mob_list.spider{unlock:1b} unless data storage temp:_ data.Items[{Slot:23b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if data storage temp:_ data.selected_mob_old{id:"spider"} run data modify storage temp:_ data.selected_mob set value {}
execute if data storage anemoland:progress data.mob_list.spider{unlock:1b} run data modify storage temp:_ data.Items_after append value {Slot:23b,id:"green_dye",count:1,components:{"minecraft:item_model":"anemoland:entity/spider/icon","minecraft:custom_name":'{"translate":"anemoland.mob.spider.default.name","italic":false}',"lore":['{"text":"  モブ","color":"gray","italic":false}'],"minecraft:custom_data":{chest_menu:1b}}} 
execute unless data storage anemoland:progress data.mob_list.spider{unlock:1b} run data modify storage temp:_ data.Items_after append value {Slot:23b,id:"knowledge_book",count:1,components:{"minecraft:item_model":"anemoland:gui/icon/locked","minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b}}} 

execute if data storage anemoland:progress data.mob_list.raptor{unlock:1b} unless data storage temp:_ data.Items[{Slot:24b,components:{"minecraft:custom_data":{chest_menu:1b}}}] run data modify storage temp:_ data.selected_mob set value {id:"raptor","minecraft:item_model":"anemoland:entity/raptor/icon"}
execute if data storage anemoland:progress data.mob_list.raptor{unlock:1b} unless data storage temp:_ data.Items[{Slot:24b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if data storage temp:_ data.selected_mob_old{id:"raptor"} run data modify storage temp:_ data.selected_mob set value {}
execute if data storage anemoland:progress data.mob_list.raptor{unlock:1b} run data modify storage temp:_ data.Items_after append value {Slot:24b,id:"green_dye",count:1,components:{"minecraft:item_model":"anemoland:entity/raptor/icon","minecraft:custom_name":'{"translate":"anemoland.mob.raptor.default.name","italic":false}',"lore":['{"text":"  モブ","color":"gray","italic":false}'],"minecraft:custom_data":{chest_menu:1b}}} 
execute unless data storage anemoland:progress data.mob_list.raptor{unlock:1b} run data modify storage temp:_ data.Items_after append value {Slot:24b,id:"knowledge_book",count:1,components:{"minecraft:item_model":"anemoland:gui/icon/locked","minecraft:custom_name":'""',"minecraft:custom_data":{chest_menu:1b}}} 

data modify storage temp:_ data.Items_after append value {Slot:26b,id:"knowledge_book",count:1,components:{"minecraft:item_model":"anemoland:gui/icon/scroll_right","minecraft:custom_name":'{"translate":"anemoland.common.page_forward","italic":false,"color":"white"}',"minecraft:custom_data":{chest_menu:1b}}} 
