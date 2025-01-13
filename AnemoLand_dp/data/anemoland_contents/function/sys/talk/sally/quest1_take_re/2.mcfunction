execute as @a at @s if entity @e[type=villager,tag=talker,tag=sally,distance=..64] run tellraw @s ["           ",{"text": "マップ上からマルテロス2頭が同時出現しているフィールドに移動\n           してくれ。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_take_re/3 135t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_take_re/3 162t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/quest1_take_re/3 108t
