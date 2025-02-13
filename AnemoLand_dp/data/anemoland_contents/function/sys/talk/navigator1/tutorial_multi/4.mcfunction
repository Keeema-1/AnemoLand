execute as @a at @s if entity @e[type=villager,tag=talker,tag=navigator1,distance=..64] run tellraw @s ["           ",{"text": "また、既に誰かが戦闘しているフィールドに後から参加することは\n           できませんが、他のフィールドに移動することは可能です。"},{"text": "人数が\n           多いときは分かれて行動するのも良いかもしれません。"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/tutorial_multi/5 306t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/tutorial_multi/5 367t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/tutorial_multi/5 245t
