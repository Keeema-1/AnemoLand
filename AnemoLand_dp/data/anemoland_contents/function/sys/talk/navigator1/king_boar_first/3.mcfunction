execute as @a run tellraw @s ["           ",{"text": "どちらの攻撃を行ってくるのか、動作を観察しながら見極めるのが\n           討伐のコツですよ！"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/king_boar_first/4 146t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/king_boar_first/4 176t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/king_boar_first/4 117t
