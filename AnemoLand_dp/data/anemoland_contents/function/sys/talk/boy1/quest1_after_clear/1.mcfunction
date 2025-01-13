execute as @a run tellraw @s ["           ",{"text": "もし僕を助っ人として呼びたいと思ったら、メニューの"},{"text": "ペット・助\n           っ人タブ","color":"aqua"},{"text": "の"},{"text": "助っ人を呼ぶ","color":"aqua"},{"text": "を使ってください。"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_after_clear/2 174t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/boy1/quest1_after_clear/2 209t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/boy1/quest1_after_clear/2 139t
