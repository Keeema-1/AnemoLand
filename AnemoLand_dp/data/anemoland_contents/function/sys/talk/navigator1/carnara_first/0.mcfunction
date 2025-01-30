execute as @a run tellraw @s [{"translate":"anemoland.character.girl1.speak"}]
execute as @a run tellraw @s ["         ",{"text":"<ナビゲーター マキ>"}]
execute as @a run tellraw @s ["           ",{"text": "カールナーラ","color":"aqua"},{"text": "が出現しました！"},{"text": "▼","color":"dark_gray"}]
execute as @a run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/carnara_first/1 42t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/carnara_first/1 50t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/carnara_first/1 33t
