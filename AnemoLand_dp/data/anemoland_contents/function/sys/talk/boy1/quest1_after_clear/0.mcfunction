execute unless score #npc.boy1 talk1 matches 0 run return 1
scoreboard players set #npc.boy1 talk1 -1
execute as @a run tellraw @s [{"translate":"anemoland.character.boy1.smile"}]
execute as @a run tellraw @s ["         ",{"text":"<ミナト>"}]
execute as @a run tellraw @s ["           ",{"text": "改めて、手伝ってくれてありがとうございました！"}]
execute as @a run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_after_clear/1 64t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_after_clear/1 77t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_after_clear/1 51t
