execute unless score #npc.sally talk1 matches 0 run return 1
scoreboard players set #npc.sally talk1 -1
execute as @a run tellraw @s [{"translate":"anemoland.character.girl2.smile"}]
execute as @a run tellraw @s ["         ",{"text":"<サリー>"}]
execute as @a run tellraw @s ["           ",{"text": "よお！"}]
execute as @a run tellraw @s ["           ",{"text": "アタシはサリーってんだ。よろしくな！"},{"text": "▼","color":"dark_gray"}]
execute as @a run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_1/1 61t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_1/1 73t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_1/1 49t
