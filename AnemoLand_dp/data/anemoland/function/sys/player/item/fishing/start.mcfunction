#> anemoland:sys/player/item/fishing/start
#
# 釣り開始
#
# @within function anemoland:sys/player/item/fishing/0

scoreboard players set @s action0 1
scoreboard players reset @s action_time

playsound minecraft:entity.fishing_bobber.throw master @a ~ ~ ~ 2 1

summon text_display ~ ~1 ~ {Tags:["fishing_bobber","newly_summoned"],text:'"\\ue013 "',billboard:"center",background:0,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-0.5f,0.0f],scale:[2.5f,2.5f,2.5f]},Passengers:[{id:"block_display",block_state:{Name:"gray_concrete"},transformation:[0.0150f,0.0000f,0.0000f,0.0000f,0.0000f,0.0150f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}

execute as @e[tag=newly_summoned,distance=..3] run scoreboard players operation @s player_id = #player_id temp

tag @e[tag=newly_summoned,distance=..3] remove newly_summoned

function anemoland:sys/player/item/fishing/kill_bobber_without_player
