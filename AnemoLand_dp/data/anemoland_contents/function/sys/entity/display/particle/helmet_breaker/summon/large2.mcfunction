# execute rotated ~ 0 positioned ^ ^ ^1 run summon armor_stand ~ 3 ~ {Tags:["particle_display","particle.helmet_breaker","newly_summoned"],Invisible:1b,Marker:1b,NoAI:1b,ArmorItems:[{},{},{},{id:"black_dye",Count:1,components:{enchantments:{levels:{"anemoland:tick":1}}}}],Passengers:[{id:"text_display",text:'"\\ue000"',transformation:[0.0000f,-25.0000f,0.0000f,4.5000f,25.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,25.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],background:0,billboard:"center"}]}

# execute rotated ~ 0 positioned ^ ^ ^1 run summon armor_stand ~ 3 ~ {Tags:["particle_display","particle.helmet_breaker","newly_summoned"],Invisible:1b,Marker:1b,NoAI:1b,ArmorItems:[{},{},{},{id:"black_dye",Count:1,components:{enchantments:{levels:{"anemoland:tick":1}}}}],Passengers:[{id:"text_display",text:'"\\ue000"',transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.5f,1.0f],translation:[4.0f,-4.0f,-1.0f],scale:[32.0f,32.0f,32.0f]},background:0,billboard:"center"}]}

execute rotated ~ 0 positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["particle_display","particle.helmet_breaker","newly_summoned"],Invisible:1b,Marker:1b,NoAI:1b,ArmorItems:[{},{},{},{id:"black_dye",Count:1,components:{enchantments:{levels:{"anemoland:tick":1}}}}],Passengers:[{id:"text_display",text:'"\\ue000"',transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.5f,1.0f],translation:[1.0f,0.0f,1.0f],scale:[8.0f,8.0f,8.0f]},background:0,billboard:"center"}]}

tag @s add me
execute as @e[type=armor_stand,tag=newly_summoned,distance=..1] rotated as @a[tag=me,limit=1] rotated ~ 0 positioned ^1 ^1 ^ rotated ~180 ~ run tp @s ~ ~ ~ ~ ~
tag @s remove me
tag @e[type=armor_stand,tag=newly_summoned,distance=..4] remove newly_summoned