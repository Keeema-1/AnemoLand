execute as @a run tellraw @s ["           ",{"text": "このバージョンで挑戦できる全てのボスを討伐しました。","color":"green"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/demo_end/1 72t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/demo_end/1 87t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/system/demo_end/1 58t
