execute as @a run tellraw @s ["           ",{"text": "最近この辺にマルテロスのつがいが住み着いちまったみたいでな。\n           追い払おうにもアタシ1人じゃ手に負えねぇんだ。"}]
execute as @a run tellraw @s ["           ",{"text": "アンタ、ちょっと討伐を手伝ってくれねぇか?"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_1/2 1t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_1/2 1t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_1/2 1t
