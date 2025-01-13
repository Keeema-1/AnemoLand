execute unless score #npc.sally talk1 matches 0 run return 1
execute as @a[distance=..64] run tellraw @s [{"translate":"anemoland.character.girl2.smile"}]
execute as @a[distance=..64] run tellraw @s ["         ",{"text":"<サリー>"}]
execute as @a[distance=..64] run tellraw @s ["           ",{"text": "討伐成功だ！"}]
execute as @a[distance=..64] run tellraw @s ["           ",{"text": "手伝ってくれてありがとな、頼もしかったぜ！"}]
execute as @a[distance=..64] run tellraw @s ""
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_clear/1 75t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_clear/1 90t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/quest1_clear/1 60t
