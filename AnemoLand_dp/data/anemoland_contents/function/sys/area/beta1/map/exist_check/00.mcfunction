function anemoland_contents:sys/area/beta1/map/exist_check/000
execute if entity @s[tag=player_exist,tag=field] run summon text_display ~ ~-1 ~ {Tags:["player_exist_display"],text:'{"text":"⚔ 交戦中 ⚔","color":"red"}',transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f]},billboard:"center"}
