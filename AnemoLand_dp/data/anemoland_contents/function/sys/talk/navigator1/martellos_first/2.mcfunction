execute as @a run tellraw @s ["           ",{"text": "マルテロスは強力な相手なので、しっかり装備を整えてから挑むこ\n           とをおすすめします！"}]
execute as @a run tellraw @s ["           ",{"text": "もし討伐が難しい場合は、ペットを連れていってモンスターの攻撃\n           を分散させるのが効果的ですよ！"}]
execute as @a run tellraw @s ["           ",{"text": "それでは、検討を祈ります！"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/3 342t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/3 410t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/martellos_first/3 273t
