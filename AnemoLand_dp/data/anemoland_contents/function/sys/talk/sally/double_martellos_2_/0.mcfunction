execute unless score #npc.sally talk1 matches 0 run return 1
scoreboard players set #npc.sally talk1 -1
execute as @a at @s if entity @e[type=villager,tag=talker,tag=sally,distance=..64] run tellraw @s [{"translate":"anemoland.character.girl2.smile"}]
execute as @a at @s if entity @e[type=villager,tag=talker,tag=sally,distance=..64] run tellraw @s ["         ",{"text":"<サリー>"}]
execute as @a at @s if entity @e[type=villager,tag=talker,tag=sally,distance=..64] run tellraw @s ["           ",{"text": "改めて、アタシの依頼を説明するぜ。"},{"text": "▼","color":"dark_gray"}]
execute as @a at @s if entity @e[type=villager,tag=talker,tag=sally,distance=..64] run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_2_/1 50t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_2_/1 60t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_2_/1 40t
