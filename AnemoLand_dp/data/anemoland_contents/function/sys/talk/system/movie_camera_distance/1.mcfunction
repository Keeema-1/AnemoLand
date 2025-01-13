execute as @a run tellraw @s ["           ",{"text":"[三人称視点用の距離]","color":"light_purple","clickEvent": {"action": "run_command","value": "/trigger trigger set 29001"}}]
execute as @a run tellraw @s ["           ",{"text":"[一人称視点用の距離]","color":"light_purple","clickEvent": {"action": "run_command","value": "/trigger trigger set 29002"}}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/movie_camera_distance/2 1t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/movie_camera_distance/2 1t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/system/movie_camera_distance/2 1t
