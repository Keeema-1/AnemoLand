execute as @a run tellraw @s ["           ",{"text": "わからないことがあれば、私に聞いてくださいね！"}]
execute as @a run tellraw @s ["           ",{"text": "よろしくお願いします！"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/hello/3 1t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/hello/3 1t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/hello/3 1t
