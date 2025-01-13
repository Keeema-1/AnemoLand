execute as @a at @s if entity @e[type=villager,tag=talker,tag=boy1,distance=..64] run tellraw @s ["           ",{"text":"[再び依頼を引き受ける 【スクルスヘッドとガラパパスの同時討伐】]","color":"light_purple","clickEvent": {"action": "run_command","value": "/trigger trigger set 21217"}}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_ask_re/2 1t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_ask_re/2 1t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_ask_re/2 1t
