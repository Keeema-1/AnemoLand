execute unless score #npc.boy1 talk1 matches 0 run return 1
scoreboard players set #npc.boy1 talk1 -1
execute as @a run tellraw @s [{"translate":"anemoland.character.boy1.smile"}]
execute as @a run tellraw @s ["         ",{"text":"<ミナト>"}]
execute as @a run tellraw @s ["           ",{"text": "初めまして!僕はミナトといいます。"},{"text": "▼","color":"dark_gray"}]
execute as @a run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_ask/1 50t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_ask/1 60t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_ask/1 40t
