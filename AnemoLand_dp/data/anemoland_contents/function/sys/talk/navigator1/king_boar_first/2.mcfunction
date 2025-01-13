execute as @a run tellraw @s ["           ",{"text": "キングボアは目の前の敵への突進攻撃、そして近くの敵を踏み潰す\n           叩きつけ攻撃を行ってきます。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/king_boar_first/3 160t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/king_boar_first/3 192t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/king_boar_first/3 128t
