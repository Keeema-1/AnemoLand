execute as @a run tellraw @s ["           ",{"text": "その爆破は火属性を含む攻撃なので、火属性耐性が低い装備の場合\n           は注意しましょう！"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/bagikeros_first/3 146t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/bagikeros_first/3 176t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/bagikeros_first/3 117t
