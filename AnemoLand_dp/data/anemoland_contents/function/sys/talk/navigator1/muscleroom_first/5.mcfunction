execute as @a run tellraw @s ["           ",{"text": "もしマッスルームの討伐が難しい場合は、Lv.25のマルテロス\n           とオオジヌシを討伐することでもゴールドランクに昇格することが\n           可能です。"},{"text": "その場合は、ゴールドランクの装備を揃えてからリベン\n           ジしてみましょう！"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/muscleroom_first/6 380t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/muscleroom_first/6 456t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/muscleroom_first/6 304t
