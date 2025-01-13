scoreboard players set #npc.sally talk1 -1
execute as @a run tellraw @s [{"translate":"anemoland.character.girl2.smile"}]
execute as @a run tellraw @s ["         ",{"text":"<サリー>"}]
execute as @a run tellraw @s ["           ",{"text": "おお、本当か！ありがとな！"}]
execute as @a run tellraw @s ["           ",{"text": "んじゃあ改めて、アタシの依頼を説明するぜ。"},{"text": "▼","color":"dark_gray"}]
execute as @a run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_take/1 97t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_take/1 116t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/quest1_take/1 77t
