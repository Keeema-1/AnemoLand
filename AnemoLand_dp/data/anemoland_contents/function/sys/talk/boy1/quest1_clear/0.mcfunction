execute unless score #npc.boy1 talk1 matches 0 run return 1
execute as @a[distance=..64] run tellraw @s [{"translate":"anemoland.character.boy1.smile"}]
execute as @a[distance=..64] run tellraw @s ["         ",{"text":"<ミナト>"}]
execute as @a[distance=..64] run tellraw @s ["           ",{"text": "目標達成ですね！"}]
execute as @a[distance=..64] run tellraw @s ["           ",{"text": "本当に助かりました、ありがとうございます！"}]
execute as @a[distance=..64] run tellraw @s ["           ",{"text": "ベースキャンプに戻りましょう！"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_clear/1 122t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_clear/1 146t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_clear/1 97t
