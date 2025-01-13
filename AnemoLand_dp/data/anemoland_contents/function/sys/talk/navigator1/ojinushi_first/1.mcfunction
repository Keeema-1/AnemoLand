execute as @a run tellraw @s ["           ",{"text": "オオジヌシは花火玉を吐き出す攻撃が特徴的です。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/ojinushi_first/2 67t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/ojinushi_first/2 80t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/ojinushi_first/2 53t
