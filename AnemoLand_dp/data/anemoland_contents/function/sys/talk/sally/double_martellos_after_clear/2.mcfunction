execute as @a run tellraw @s ["           ",{"text": "助っ人にアタシを選べば、今回みたいにアタシが戦闘に参加するよ\n           うになるぜ。"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_after_clear/3 135t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_after_clear/3 162t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_after_clear/3 108t
