execute as @a run tellraw @s ["           ",{"text": "しっかり準備をして、討伐に向かいましょう！"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/king_boar_first/5 58t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/king_boar_first/5 70t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/king_boar_first/5 47t
