summon pig ~ ~ ~ {Tags:["newly_summoned"],Passengers:[{id:"turtle"},{id:"text_display",text:'""',Tags:["display1"],billboard:"vertical",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f]}},{id:"area_effect_cloud",Duration:2147483647,Radius:0.0f,effects:[],Tags:["target_recorder"]}]}
execute as @e[type=pig,tag=newly_summoned,distance=..1,limit=1] run function anemoland_contents:sys/entity/mob/garapapas/summon/common/00
scoreboard players reset #new_entity.level temp
