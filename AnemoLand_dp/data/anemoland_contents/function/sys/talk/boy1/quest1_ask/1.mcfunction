execute as @a run tellraw @s [{"translate":"anemoland.character.boy1.worry"}]
execute as @a run tellraw @s ["           ",{"text": "いきなりですが、ちょっとお願い事を聞いて欲しいんです...。"},{"text": "\n           ▼","color":"dark_gray"}]
execute as @a run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_ask/2 122t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_ask/2 146t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_ask/2 97t
