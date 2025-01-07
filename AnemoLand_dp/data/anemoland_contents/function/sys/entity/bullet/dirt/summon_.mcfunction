tag @s add bullet
tag @s add bullet.dirt
execute if score #bullet.pet_flag temp matches 1 run tag @s add pet_bullet
data merge entity @s {Marker:1b,Invisible:1b}
data modify entity @s ArmorItems[3] set value {id:"black_dye",count:1,components:{enchantments:{levels:{"rpg:tick":1}}}}
summon block_display ~ ~ ~ {Tags:["newly_summoned"],block_state:{Name:"dirt"},billboard:"fixed",transformation:[1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,1.0000f,0.0000f,-0.5000f,0.0000f,0.0000f,1.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],shadow_strength:1,shadow_radius:1.0}
# data merge entity @e[type=block_display,tag=newly_summoned,distance=..1,limit=1] {transformation:[1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,1.0000f,0.0000f,-0.5000f,0.0000f,0.0000f,1.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],interpolation_duration:10,start_interpolation:0}
# data merge entity @e[type=block_display,tag=newly_summoned,distance=..1,limit=1] {transformation:[1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,1.0000f,0.0000f,1.0000f,0.0000f,0.0000f,1.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],interpolation_duration:50,start_interpolation:1}

ride @e[type=block_display,distance=..1,tag=newly_summoned,limit=1] mount @s
execute on passengers run tag @s remove newly_summoned
tp @s ^ ^0.5 ^ ~ ~
scoreboard players operation @s action_way = #action_way temp

