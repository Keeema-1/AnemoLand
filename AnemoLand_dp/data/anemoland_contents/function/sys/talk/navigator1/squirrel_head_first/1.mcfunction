execute as @a run tellraw @s ["           ",{"text": "スクルスヘッドは大きな尻尾を振り回して攻撃を行います。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/squirrel_head_first/2 78t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/squirrel_head_first/2 93t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/squirrel_head_first/2 62t
