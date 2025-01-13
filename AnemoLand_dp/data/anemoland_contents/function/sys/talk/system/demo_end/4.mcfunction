execute as @a run tellraw @s ["           ",{"text": "バグを発見した場合も、そちらのURLから報告をお願いいたしま\n           す。","color":"green"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/demo_end/5 124t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/demo_end/5 149t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/system/demo_end/5 99t
