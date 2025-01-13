execute unless score #npc.navigator1 talk1 matches 0 run return 1
scoreboard players set #npc.navigator1 talk1 -1
execute as @a run tellraw @s [{"translate":"anemoland.character.girl1.smile"}]
execute as @a run tellraw @s ["         ",{"text":"<ナビゲーター マキ>"}]
execute as @a run tellraw @s ["           ",{"text": "はじめまして！"}]
execute as @a run tellraw @s ["           ",{"text": "私はナビゲーターのマキといいます。"},{"text": "▼","color":"dark_gray"}]
execute as @a run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/hello/1 69t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/hello/1 83t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/hello/1 55t
