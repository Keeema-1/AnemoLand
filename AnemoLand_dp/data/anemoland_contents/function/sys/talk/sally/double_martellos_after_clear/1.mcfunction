execute as @a run tellraw @s ["           ",{"text": "もしアタシを助っ人として呼びたいと思ったら、メニューの"},{"text": "チーム\n           タブ","color":"aqua"},{"text": "の"},{"text": "助っ人を呼ぶ","color":"aqua"},{"text": "を使ってくれ。"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_after_clear/2 163t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_after_clear/2 195t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/sally/double_martellos_after_clear/2 130t
