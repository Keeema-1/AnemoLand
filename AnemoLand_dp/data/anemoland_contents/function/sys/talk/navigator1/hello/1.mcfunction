execute as @a run tellraw @s ["           ",{"text": "ナビゲーターの名の通り、あなたの案内役を務めさせていただきま\n           す。"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/hello/2 124t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/hello/2 149t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/hello/2 99t
