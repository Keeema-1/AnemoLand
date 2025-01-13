execute unless score #npc.sally talk1 matches 0 run return 1
scoreboard players set #npc.sally talk1 -1
execute as @a run tellraw @s [{"translate":"anemoland.character.girl2.smile"}]
execute as @a run tellraw @s ["         ",{"text":"<サリー>"}]
execute as @a run tellraw @s ["           ",{"text": "改めて、手伝ってくれてありがとな！"}]
execute as @a run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_after_clear/1 47t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_after_clear/1 57t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/quest1_after_clear/1 38t
