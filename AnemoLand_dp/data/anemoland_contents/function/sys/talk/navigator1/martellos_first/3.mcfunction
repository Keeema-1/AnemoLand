execute as @a run tellraw @s ["           ",{"text": "シルバーランクに昇格すると Lv.20 - 29 のモンスタ\n           ーに挑戦できるようになり、武器や防具もさらに強化できるように\n           なります。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/4 254t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/4 304t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/4 203t
