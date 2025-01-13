execute as @a run tellraw @s ["           ",{"text": "キングボアよりも多彩な攻撃を行ってくるので、攻撃の動作を見極\n           められるようによく観察して戦いましょう！"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/3 177t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/3 212t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/3 141t
