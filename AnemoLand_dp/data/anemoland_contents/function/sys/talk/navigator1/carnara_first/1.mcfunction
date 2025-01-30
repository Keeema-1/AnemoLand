execute as @a run tellraw @s ["           ",{"text": "カールナーラはその長い体を活かした攻撃と、口から出す氷属性の\n           ビームが特徴的です。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/carnara_first/2 149t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/carnara_first/2 179t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/carnara_first/2 119t
