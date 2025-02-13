execute as @a at @s if entity @e[type=villager,tag=talker,tag=navigator1,distance=..64] run tellraw @s ["           ",{"text": "プレイヤーが3人以上参加する場合は、ペットは1体ずつまでしか\n           召喚されません。"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/tutorial_multi/4 144t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/tutorial_multi/4 172t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/tutorial_multi/4 115t
