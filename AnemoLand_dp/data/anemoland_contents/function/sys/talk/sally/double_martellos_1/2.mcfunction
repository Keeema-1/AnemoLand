execute as @a run tellraw @s ["           ",{"text":"[依頼を引き受ける]","color":"light_purple","clickEvent": {"action": "run_command","value": "/trigger trigger set 21112"}}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_1/3 1t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_1/3 1t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_1/3 1t
