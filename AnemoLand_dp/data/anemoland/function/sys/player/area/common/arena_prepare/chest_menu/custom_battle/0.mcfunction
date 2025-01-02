
scoreboard players reset #click_flag temp
data modify storage temp:_ data.Items set from block ~ ~ ~ Items

execute unless data storage temp:_ data.Items[{Slot:0b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run data modify storage anemoland:settings data.arena.custom.selected_menu set value "mob1_type"
execute unless data storage temp:_ data.Items[{Slot:9b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run data modify storage anemoland:settings data.arena.custom.selected_menu set value "mob1_level"
execute unless data storage temp:_ data.Items[{Slot:1b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run data modify storage anemoland:settings data.arena.custom.selected_menu set value "mob2_type"
execute unless data storage temp:_ data.Items[{Slot:10b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run data modify storage anemoland:settings data.arena.custom.selected_menu set value "mob2_level"
execute unless data storage temp:_ data.Items[{Slot:2b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run data modify storage anemoland:settings data.arena.custom.selected_menu set value "mob3_type"
execute unless data storage temp:_ data.Items[{Slot:11b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run data modify storage anemoland:settings data.arena.custom.selected_menu set value "mob3_level"
execute unless data storage temp:_ data.Items[{Slot:3b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run data modify storage anemoland:settings data.arena.custom.selected_menu set value "mob4_type"
execute unless data storage temp:_ data.Items[{Slot:12b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run data modify storage anemoland:settings data.arena.custom.selected_menu set value "mob4_level"
execute unless data storage temp:_ data.Items[{Slot:13b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/player_side/0
execute unless data storage temp:_ data.Items[{Slot:8b,components:{"minecraft:custom_data":{chest_menu:1b}}}] if function anemoland:sys/common/click_flag run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/activate/0

data modify storage temp:_ data.Items_after set value []

execute if data storage anemoland:settings data.arena.custom{selected_menu:"mob1_type"} run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/mob1_type/0
execute if data storage anemoland:settings data.arena.custom.mob1.type.id if data storage anemoland:settings data.arena.custom{selected_menu:"mob1_level"} run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/mob1_level/0
execute if data storage anemoland:settings data.arena.custom{selected_menu:"mob2_type"} run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/mob2_type/0
execute if data storage anemoland:settings data.arena.custom.mob2.type.id if data storage anemoland:settings data.arena.custom{selected_menu:"mob2_level"} run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/mob2_level/0
execute if data storage anemoland:settings data.arena.custom{selected_menu:"mob3_type"} run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/mob3_type/0
execute if data storage anemoland:settings data.arena.custom.mob3.type.id if data storage anemoland:settings data.arena.custom{selected_menu:"mob3_level"} run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/mob3_level/0
execute if data storage anemoland:settings data.arena.custom{selected_menu:"mob4_type"} run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/mob4_type/0
execute if data storage anemoland:settings data.arena.custom.mob4.type.id if data storage anemoland:settings data.arena.custom{selected_menu:"mob4_level"} run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/mob4_level/0

data modify storage temp:_ data.Items_after append value {Slot:0b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":37,"minecraft:custom_name":'{"text":"モンスター1の種類を選択","italic":false,"color":"white"}',"minecraft:custom_data":{chest_menu:1b}}} 
execute if data storage anemoland:settings data.arena.custom.mob1.type.id run data modify storage temp:_ data.Items_after[{Slot:0b}].id set value "green_dye"
execute if data storage anemoland:settings data.arena.custom.mob1.type.id run data modify storage temp:_ data.Items_after[{Slot:0b}].components."minecraft:custom_model_data" set from storage anemoland:settings data.arena.custom.mob1.type.custom_model_data
data modify storage temp:_ data.Items_after append value {Slot:9b,id:"black_dye",count:1,components:{"minecraft:custom_model_data":15,"minecraft:custom_name":'{"text":"モンスター1のレベルを選択","italic":false,"color":"gray"}',"minecraft:custom_data":{chest_menu:1b}}} 
execute if data storage anemoland:settings data.arena.custom.mob1.type.id run data modify storage temp:_ data.Items_after[{Slot:9b}].components."minecraft:custom_name" set value '{"text":"モンスター1のレベルを選択","italic":false,"color":"white"}'
execute if data storage anemoland:settings data.arena.custom.mob1.type.id run data modify storage temp:_ data.Items_after[{Slot:9b}].components."minecraft:custom_model_data" set value 121
execute if data storage anemoland:settings data.arena.custom.mob1.type.id run data modify storage temp:_ data.Items_after[{Slot:9b}].count set from storage anemoland:settings data.arena.custom.mob1.level

# tellraw @a {"storage":"temp:_","nbt":"data.Items_after[{Slot:9b}].count"}

data modify storage temp:_ data.Items_after append value {Slot:1b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":37,"minecraft:custom_name":'{"text":"モンスター2の種類を選択","italic":false,"color":"white"}',"minecraft:custom_data":{chest_menu:1b}}} 
execute if data storage anemoland:settings data.arena.custom.mob2.type.id run data modify storage temp:_ data.Items_after[{Slot:1b}].id set value "green_dye"
execute if data storage anemoland:settings data.arena.custom.mob2.type.id run data modify storage temp:_ data.Items_after[{Slot:1b}].components."minecraft:custom_model_data" set from storage anemoland:settings data.arena.custom.mob2.type.custom_model_data
data modify storage temp:_ data.Items_after append value {Slot:10b,id:"black_dye",count:1,components:{"minecraft:custom_model_data":15,"minecraft:custom_name":'{"text":"モンスター2のレベルを選択","italic":false,"color":"gray"}',"minecraft:custom_data":{chest_menu:1b}}} 
execute if data storage anemoland:settings data.arena.custom.mob2.type.id run data modify storage temp:_ data.Items_after[{Slot:10b}].components."minecraft:custom_name" set value '{"text":"モンスター2のレベルを選択","italic":false,"color":"white"}'
execute if data storage anemoland:settings data.arena.custom.mob2.type.id run data modify storage temp:_ data.Items_after[{Slot:10b}].components."minecraft:custom_model_data" set value 121
execute if data storage anemoland:settings data.arena.custom.mob2.type.id run data modify storage temp:_ data.Items_after[{Slot:10b}].count set from storage anemoland:settings data.arena.custom.mob2.level

data modify storage temp:_ data.Items_after append value {Slot:2b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":37,"minecraft:custom_name":'{"text":"モンスター3の種類を選択","italic":false,"color":"white"}',"minecraft:custom_data":{chest_menu:1b}}} 
execute if data storage anemoland:settings data.arena.custom.mob3.type.id run data modify storage temp:_ data.Items_after[{Slot:2b}].id set value "green_dye"
execute if data storage anemoland:settings data.arena.custom.mob3.type.id run data modify storage temp:_ data.Items_after[{Slot:2b}].components."minecraft:custom_model_data" set from storage anemoland:settings data.arena.custom.mob3.type.custom_model_data
data modify storage temp:_ data.Items_after append value {Slot:11b,id:"black_dye",count:1,components:{"minecraft:custom_model_data":15,"minecraft:custom_name":'{"text":"モンスター3のレベルを選択","italic":false,"color":"gray"}',"minecraft:custom_data":{chest_menu:1b}}} 
execute if data storage anemoland:settings data.arena.custom.mob3.type.id run data modify storage temp:_ data.Items_after[{Slot:11b}].components."minecraft:custom_name" set value '{"text":"モンスター3のレベルを選択","italic":false,"color":"white"}'
execute if data storage anemoland:settings data.arena.custom.mob3.type.id run data modify storage temp:_ data.Items_after[{Slot:11b}].components."minecraft:custom_model_data" set value 121
execute if data storage anemoland:settings data.arena.custom.mob3.type.id run data modify storage temp:_ data.Items_after[{Slot:11b}].count set from storage anemoland:settings data.arena.custom.mob3.level

data modify storage temp:_ data.Items_after append value {Slot:3b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":37,"minecraft:custom_name":'{"text":"モンスター4の種類を選択","italic":false,"color":"white"}',"minecraft:custom_data":{chest_menu:1b}}} 
execute if data storage anemoland:settings data.arena.custom.mob4.type.id run data modify storage temp:_ data.Items_after[{Slot:3b}].id set value "green_dye"
execute if data storage anemoland:settings data.arena.custom.mob4.type.id run data modify storage temp:_ data.Items_after[{Slot:3b}].components."minecraft:custom_model_data" set from storage anemoland:settings data.arena.custom.mob4.type.custom_model_data
data modify storage temp:_ data.Items_after append value {Slot:12b,id:"black_dye",count:1,components:{"minecraft:custom_model_data":15,"minecraft:custom_name":'{"text":"モンスター4のレベルを選択","italic":false,"color":"gray"}',"minecraft:custom_data":{chest_menu:1b}}} 
execute if data storage anemoland:settings data.arena.custom.mob4.type.id run data modify storage temp:_ data.Items_after[{Slot:12b}].components."minecraft:custom_name" set value '{"text":"モンスター4のレベルを選択","italic":false,"color":"white"}'
execute if data storage anemoland:settings data.arena.custom.mob4.type.id run data modify storage temp:_ data.Items_after[{Slot:12b}].components."minecraft:custom_model_data" set value 121
execute if data storage anemoland:settings data.arena.custom.mob4.type.id run data modify storage temp:_ data.Items_after[{Slot:12b}].count set from storage anemoland:settings data.arena.custom.mob4.level

data modify storage temp:_ data.Items_after append value {Slot:4b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":54,"minecraft:custom_name":'{"text":"フィールドの種類を選択","italic":false,"color":"white"}',"lore":['{"text":"  (仮)","color":"gray","italic":false,"color":"white"}'],"minecraft:custom_data":{chest_menu:1b}}} 

execute unless data storage anemoland:settings data.arena.custom{player_side:1} run data modify storage temp:_ data.Items_after append value {Slot:13b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":59,"minecraft:custom_name":'{"text":"モンスター3・4を味方にする","italic":false,"color":"white"}',"lore":['{"text":"  無効","color":"gray","italic":false}'],"minecraft:custom_data":{chest_menu:1b}}} 
execute if data storage anemoland:settings data.arena.custom{player_side:1} run data modify storage temp:_ data.Items_after append value {Slot:13b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":59,"minecraft:custom_name":'{"text":"モンスター3・4を味方にする","italic":false,"color":"white"}',"lore":['{"text":"  有効","color":"aqua","italic":false}'],"minecraft:custom_data":{chest_menu:1b}}} 

data modify storage temp:_ data.Items_after append value {Slot:5b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":19,"minecraft:custom_name":'{"text":"モンスターのHPを調整","italic":false,"color":"white"}',"lore":['{"text":"  (仮)","color":"gray","italic":false,"color":"white"}'],"minecraft:custom_data":{chest_menu:1b}}} 
data modify storage temp:_ data.Items_after append value {Slot:14b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":58,"minecraft:custom_name":'{"text":"モンスターの攻撃力を調整","italic":false,"color":"white"}',"lore":['{"text":"  (仮)","color":"gray","italic":false,"color":"white"}'],"minecraft:custom_data":{chest_menu:1b}}} 

data modify storage temp:_ data.Items_after append value {Slot:6b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":0,"minecraft:custom_name":'{"text":"","italic":false,"color":"white"}',"lore":['{"text":"  (仮)","color":"gray","italic":false,"color":"white"}'],"minecraft:custom_data":{chest_menu:1b}}} 
data modify storage temp:_ data.Items_after append value {Slot:15b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":0,"minecraft:custom_name":'{"text":"","italic":false,"color":"white"}',"lore":['{"text":"  (仮)","color":"gray","italic":false,"color":"white"}'],"minecraft:custom_data":{chest_menu:1b}}} 

data modify storage temp:_ data.Items_after append value {Slot:7b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":0,"minecraft:custom_name":'{"text":"設定の保存","italic":false,"color":"white"}',"lore":['{"text":"  (仮)","color":"gray","italic":false,"color":"white"}'],"minecraft:custom_data":{chest_menu:1b}}} 
data modify storage temp:_ data.Items_after append value {Slot:16b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":0,"minecraft:custom_name":'{"text":"設定の呼び出し","italic":false,"color":"white"}',"lore":['{"text":"  (仮)","color":"gray","italic":false,"color":"white"}'],"minecraft:custom_data":{chest_menu:1b}}} 

data modify storage temp:_ data.Items_after append value {Slot:8b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":22,"minecraft:custom_name":'{"text":"決定","italic":false}',"minecraft:custom_data":{chest_menu:1b}}} 
data modify storage temp:_ data.Items_after append value {Slot:17b,id:"knowledge_book",count:1,components:{"minecraft:custom_model_data":23,"minecraft:custom_name":'{"text":"設定のリセット","italic":false,"color":"white"}',"lore":['{"text":"  (仮)","color":"gray","italic":false,"color":"white"}'],"minecraft:custom_data":{chest_menu:1b}}} 

data modify block ~ ~ ~ Items set from storage temp:_ data.Items_after

data remove storage temp:_ data.Items[{components:{"minecraft:custom_data":{chest_menu:1b}}}]
execute if data storage temp:_ data.Items[0] run function anemoland:sys/player/area/common/arena_prepare/chest_menu/custom_battle/drop
