execute as @a run tellraw @s ["           ",{"text": "また、拠点の","color":"green"},{"text": "外部URL用書見台","color":"aqua"},{"text": "からフィードバックにご回答いた\n           だけると、今後の開発の参考にいたします。","color":"green"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/demo_end/4 174t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/demo_end/4 209t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/system/demo_end/4 139t
