execute as @a run tellraw @s ["           ",{"text": "もしアタシを助っ人として呼びたいと思ったら、メニューの"},{"text": "ペット\n           ・助っ人タブ","color":"aqua"},{"text": "の"},{"text": "助っ人を呼ぶ","color":"aqua"},{"text": "を使ってくれ。"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_after_clear/2 174t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/quest1_after_clear/2 209t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/quest1_after_clear/2 139t
