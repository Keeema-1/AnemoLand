execute as @a run tellraw @s ["           ",{"text": "キングボアはHPや攻撃力が高い"},{"text": "ボスモンスター","color":"aqua"},{"text": "です。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/king_boar_first/2 72t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/king_boar_first/2 87t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/king_boar_first/2 58t
