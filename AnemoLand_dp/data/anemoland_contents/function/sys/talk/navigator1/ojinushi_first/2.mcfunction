execute as @a run tellraw @s ["           ",{"text": "花火玉は火属性を含む攻撃なので、火属性耐性が低い装備の場合は\n           注意しましょう！"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/ojinushi_first/3 141t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/ojinushi_first/3 169t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/ojinushi_first/3 113t
