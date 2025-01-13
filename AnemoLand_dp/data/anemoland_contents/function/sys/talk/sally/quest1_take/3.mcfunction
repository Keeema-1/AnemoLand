execute as @a run tellraw @s ["           ",{"text": "アタシはそこで待っておくから、アンタが到着したら討伐開始だ。"}]
execute as @a run tellraw @s ["           ",{"text": "じゃあ、よろしくな！"}]
function anemoland_contents:command/field_event/beta1/change/martellos_double_with_sally {field_id:52,level:20}
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_take/4 111t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_take/4 133t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/quest1_take/4 88t
