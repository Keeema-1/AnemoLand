execute as @a at @s if entity @e[type=villager,tag=talker,tag=boy1,distance=..64] run tellraw @s ["           ",{"text": "あなたには、僕と一緒にスクルスヘッド・ガラパパスの同時討伐を\n           行ってほしいんです。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take_re/2 149t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take_re/2 179t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take_re/2 119t
