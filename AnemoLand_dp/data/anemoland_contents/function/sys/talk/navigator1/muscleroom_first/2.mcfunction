execute as @a run tellraw @s ["           ",{"text": "怒り状態では隆起攻撃をしながら他の攻撃を連続して行ってくるた\n           め、特に注意が必要ですよ！"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/muscleroom_first/3 157t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/muscleroom_first/3 189t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/muscleroom_first/3 126t
