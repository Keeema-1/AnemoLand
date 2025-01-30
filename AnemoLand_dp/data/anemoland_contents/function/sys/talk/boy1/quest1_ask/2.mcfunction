execute as @a run tellraw @s ["           ",{"text": "最近スクルスヘッドとガラパパスが水辺で暴れ回っていて、その討\n           伐を頼まれたんですけど..."},{"text": "とても一人じゃ自信がないんです。"},{"text": "\n           ▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_ask/3 240t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_ask/3 288t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_ask/3 192t
