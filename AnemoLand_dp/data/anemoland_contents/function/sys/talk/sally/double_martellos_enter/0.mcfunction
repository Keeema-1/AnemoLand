execute unless score #npc.sally talk1 matches 0 run return 1
execute as @a[distance=..64] run tellraw @s [{"translate":"anemoland.character.girl2.smile"}]
execute as @a[distance=..64] run tellraw @s ["         ",{"text":"<サリー>"}]
execute as @a[distance=..64] run tellraw @s ["           ",{"text": "それじゃあ、さっさとやっちまおうぜ！"}]
execute as @a[distance=..64] run tellraw @s ["           ",{"text": "気合い入れてくぞ、相棒！"}]
execute as @a[distance=..64] run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_enter/1 83t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_enter/1 100t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_enter/1 66t
