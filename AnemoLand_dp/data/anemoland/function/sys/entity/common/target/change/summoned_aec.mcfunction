
data merge entity @s {Duration:2147483647,Radius:0.0f,effects:[],Tags:["target_recorder"]}

ride @s mount @e[type=#anemoland:mob_core,tag=me,distance=..1,limit=1]

data modify entity @s Owner set from storage temp:_ data.target_uuid
