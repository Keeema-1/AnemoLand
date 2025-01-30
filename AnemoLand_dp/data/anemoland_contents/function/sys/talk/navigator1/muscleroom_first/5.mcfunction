execute as @a run tellraw @s ["           ",{"text": "もしマッスルームの討伐が難しい場合は、Lv.25のマルテロス\n           とオオジヌシを討伐することでもゴールドランクに昇格することが\n           可能です。"},{"text": "その場合は、ゴールドランクの装備を揃えてからリベン\n           ジしてみましょう！"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/muscleroom_first/6 383t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/muscleroom_first/6 459t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/muscleroom_first/6 306t
