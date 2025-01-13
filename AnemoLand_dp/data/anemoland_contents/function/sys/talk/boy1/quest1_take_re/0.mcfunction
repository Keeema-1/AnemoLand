execute unless score #npc.boy1 talk1 matches 0 run return 1
scoreboard players set #npc.boy1 talk1 -1
execute as @a at @s if entity @e[type=villager,tag=talker,tag=boy1,distance=..64] run tellraw @s [{"translate":"anemoland.character.boy1.happy"}]
execute as @a at @s if entity @e[type=villager,tag=talker,tag=boy1,distance=..64] run tellraw @s ["         ",{"text":"<ミナト>"}]
execute as @a at @s if entity @e[type=villager,tag=talker,tag=boy1,distance=..64] run tellraw @s ["           ",{"text": "本当ですか！ありがとうございます〜！"}]
execute as @a at @s if entity @e[type=villager,tag=talker,tag=boy1,distance=..64] run tellraw @s ["           ",{"text": "では改めて、僕の依頼を説明しますね。"},{"text": "▼","color":"dark_gray"}]
execute as @a at @s if entity @e[type=villager,tag=talker,tag=boy1,distance=..64] run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take_re/1 102t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take_re/1 123t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_take_re/1 82t
