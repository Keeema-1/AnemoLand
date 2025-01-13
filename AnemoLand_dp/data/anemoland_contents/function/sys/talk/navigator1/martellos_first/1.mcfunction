execute as @a run tellraw @s ["           ",{"text": "マルテロスは両腕と尻尾の木槌を振り回す攻撃が特徴的です。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/2 80t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/2 96t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/2 64t
