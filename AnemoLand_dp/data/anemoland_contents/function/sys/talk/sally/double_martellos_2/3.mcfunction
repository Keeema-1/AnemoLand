execute as @a run tellraw @s ["           ",{"text": "アタシはそこで待っておくから、アンタが到着したら討伐開始だ。"}]
execute as @a run tellraw @s ["           ",{"text": "じゃあ、よろしくな！"}]
function anemoland:command/field_event/demo2/change/martellos_double_20_with_sally {field_id:62}
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_2/4 111t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_2/4 133t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_2/4 88t
