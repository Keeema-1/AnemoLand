execute as @a run tellraw @s ["           ",{"text": "また、ガラパパスを討伐すると、実力が認められて"},{"text": "シルバーランク","color":"gray"},{"text": "\n           に昇格します。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/garapapas_first/3 141t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/garapapas_first/3 169t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/garapapas_first/3 113t
