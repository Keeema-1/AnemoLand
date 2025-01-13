scoreboard players set #npc.boy1 talk1 -1
execute as @a run tellraw @s [{"translate":"anemoland.character.boy1.happy"}]
execute as @a run tellraw @s ["         ",{"text":"<ミナト>"}]
execute as @a run tellraw @s ["           ",{"text": "本当ですか！ありがとうございます〜！"}]
execute as @a run tellraw @s ["           ",{"text": "では改めて、僕の依頼を説明しますね。"},{"text": "▼","color":"dark_gray"}]
execute as @a run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take/1 102t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take/1 123t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take/1 82t
