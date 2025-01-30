execute as @a run tellraw @s ["           ",{"text": "また、スクルスヘッドは部位によってダメージ効率が変化します。"}]
execute as @a run tellraw @s ["           ",{"text": "弱点を見つけて攻撃することも大切ですよ！"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/squirrel_head_first/4 141t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/squirrel_head_first/4 169t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/squirrel_head_first/4 113t
