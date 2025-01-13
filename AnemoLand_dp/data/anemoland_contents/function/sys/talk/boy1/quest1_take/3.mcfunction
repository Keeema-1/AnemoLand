execute as @a run tellraw @s ["           ",{"text": "僕はそこで待っておきますから、あなたが到着したら討伐を開始し\n           ましょう。"}]
execute as @a run tellraw @s ["           ",{"text": "じゃあ、よろしくお願いします！"}]
function anemoland_contents:command/field_event/beta1/change/garapapas_and_squirrel_head_with_boy1 {field_id:32,level:15}
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take/4 174t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take/4 209t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take/4 139t
