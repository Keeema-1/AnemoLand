execute as @a run tellraw @s ["           ",{"text": "じゃあ、また困った時は頼りにさせてもらうぜ！"}]
function anemoland:command/progress/unlock/supporter/girl2
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_after_clear/4 61t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_after_clear/4 73t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_after_clear/4 49t
