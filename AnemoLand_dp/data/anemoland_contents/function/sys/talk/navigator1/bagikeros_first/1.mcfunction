execute as @a run tellraw @s ["           ",{"text": "バギケロスは全身の鱗から撒き散らした粉塵を、火花を発生させる\n           ことで爆破させます。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/bagikeros_first/2 149t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/bagikeros_first/2 179t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/bagikeros_first/2 119t
