execute as @a run tellraw @s ["           ",{"text": "ムービー再生時のカメラ距離設定"}]
execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/movie_camera_distance/1 1t
execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland_contents:sys/talk/system/movie_camera_distance/1 1t
execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland_contents:sys/talk/system/movie_camera_distance/1 1t
