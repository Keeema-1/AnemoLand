execute as @a run tellraw @s ["           ",{"text": "助っ人に僕を選べば、今回みたいに僕が戦闘に参加するようになり\n           ますよ。"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_after_clear/3 130t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_after_clear/3 156t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_after_clear/3 104t
