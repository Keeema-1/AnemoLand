execute unless score #npc.navigator1 talk1 matches 0 run return 1
scoreboard players set #npc.navigator1 talk1 -1
execute as @a at @s if entity @e[type=villager,tag=talker,tag=navigator1,distance=..64] run tellraw @s [{"translate":"anemoland.character.girl1.speak"}]
execute as @a at @s if entity @e[type=villager,tag=talker,tag=navigator1,distance=..64] run tellraw @s ["         ",{"text":"<ナビゲーター マキ>"}]
execute as @a at @s if entity @e[type=villager,tag=talker,tag=navigator1,distance=..64] run tellraw @s ["           ",{"text": "拠点の外に出ると"},{"text": "マップ","color":"aqua"},{"text": "に移動します。"}]
execute as @a at @s if entity @e[type=villager,tag=talker,tag=navigator1,distance=..64] run tellraw @s ["           ",{"text": "マップからは各フィールドに移動することができます。"},{"text": "▼","color":"dark_gray"}]
execute as @a at @s if entity @e[type=villager,tag=talker,tag=navigator1,distance=..64] run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/tutorial_map/1 122t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/tutorial_map/1 146t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/tutorial_map/1 97t
