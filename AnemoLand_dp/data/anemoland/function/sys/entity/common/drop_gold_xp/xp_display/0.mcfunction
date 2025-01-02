
data merge entity @s {Duration:60,Radius:0.0f,effects:[],CustomNameVisible:1b}

execute summon text_display run function anemoland:sys/entity/common/drop_gold_xp/xp_display/00

data modify entity @s CustomName set from storage temp:_ data.CustomName

data remove storage temp:_ data.CustomName
