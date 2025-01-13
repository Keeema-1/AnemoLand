execute as @a run tellraw @s ["           ",{"text": "さらに、登場する全てのモブやボスはペットとして召喚することが\n           できるので、よければお試しください。","color":"green"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/demo_end/3 168t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/demo_end/3 202t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/system/demo_end/3 135t
