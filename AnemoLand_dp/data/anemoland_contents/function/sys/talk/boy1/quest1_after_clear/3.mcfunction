execute as @a run tellraw @s ["           ",{"text": "改めて、今回はありがとうございました！"}]
function anemoland_contents:command/progress/unlock/supporter/boy1
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_after_clear/4 53t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_after_clear/4 63t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_after_clear/4 42t
