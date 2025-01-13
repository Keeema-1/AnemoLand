execute as @a run tellraw @s ["           ",{"text": "ここまで遊んでいただきありがとうございました。次回のバージョ\n           ンをお楽しみに！","color":"green"}]
execute as @a run tellraw @s ["           ",{"text": "(製作 Keeema)","color":"green"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/demo_end/6 171t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/demo_end/6 205t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/system/demo_end/6 137t
