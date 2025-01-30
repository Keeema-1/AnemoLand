execute as @a run tellraw @s ["           ",{"text": "ガラパパスは物理攻撃に加えて、水属性の攻撃を行います。"}]
execute as @a run tellraw @s ["           ",{"text": "属性攻撃を行うモンスターに対しては、装備の属性耐性にも注意し\n           てくださいね！"},{"text": "▼","color":"dark_gray"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/garapapas_first/2 215t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/navigator1/garapapas_first/2 258t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/navigator1/garapapas_first/2 172t
