execute as @a run tellraw @s ["           ",{"text": "ゴールドランクに昇格すると Lv. 30 + のモンスターに\n           挑戦できるようになり、武器や防具もさらに強化できるようになり\n           ます。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/muscleroom_first/5 248t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/muscleroom_first/5 298t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/muscleroom_first/5 198t
