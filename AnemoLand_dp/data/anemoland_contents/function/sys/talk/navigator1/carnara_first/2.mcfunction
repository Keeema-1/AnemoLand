execute as @a run tellraw @s ["           ",{"text": "氷属性耐性が低い装備の場合は注意しましょう！"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/carnara_first/3 64t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/carnara_first/3 77t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/carnara_first/3 51t
