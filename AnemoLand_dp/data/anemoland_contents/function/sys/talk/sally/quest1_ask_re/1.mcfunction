execute as @a at @s if entity @e[type=villager,tag=talker,tag=sally,distance=..64] run tellraw @s ["           ",{"text": "また困った時は頼りにさせてもらうぜ！"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_ask_re/2 50t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_ask_re/2 60t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/quest1_ask_re/2 40t
