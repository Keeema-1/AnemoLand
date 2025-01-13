execute as @a at @s if entity @e[type=villager,tag=talker,tag=boy1,distance=..64] run tellraw @s ["           ",{"text": "マップ上からスクルスヘッドとガラパパスが同時出現しているフィ\n           ールドに移動してください。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take_re/3 157t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take_re/3 189t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take_re/3 126t
