execute as @a at @s if entity @e[type=villager,tag=talker,tag=navigator1,distance=..64] run tellraw @s ["           ",{"text": "マルチプレイ時に誰かがフィールドに移動すると、近くの他のプレ\n           イヤーも一緒に移動します。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/tutorial_multi/2 157t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/tutorial_multi/2 189t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/tutorial_multi/2 126t
