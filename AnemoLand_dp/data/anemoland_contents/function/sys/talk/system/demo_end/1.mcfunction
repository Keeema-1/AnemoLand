execute as @a run tellraw @s ["           ",{"text": "現在のバージョンではLv.40までのボスがランダムに出現しま\n           す。","color":"green"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/demo_end/2 124t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/demo_end/2 149t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/system/demo_end/2 99t
