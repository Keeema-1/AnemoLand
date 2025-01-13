execute as @a run tellraw @s ["           ",{"text": "マルテロスのように体が大きいモンスターは、部位によってダメー\n           ジ効率が異なる場合があります。"},{"text": "弱点を見つけて攻撃することも大\n           切ですよ！"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/4 254t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/4 304t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/4 203t
