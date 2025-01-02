
data merge entity @s {Duration:40,Radius:0.0f,effects:[],CustomNameVisible:1b}

execute summon text_display run function anemoland:sys/entity/common/damage/dst/damage_display/000

data modify entity @s CustomName set from storage temp:_ data.CustomName

data remove storage temp:_ data.CustomName

data modify storage temp:_ data.delta set value {}
execute store result storage temp:_ data.delta.x float 0.05 run random value -10..10
execute store result storage temp:_ data.delta.y float 0.05 run random value -10..10
execute store result storage temp:_ data.delta.z float 0.05 run random value -10..10

function anemoland:sys/entity/common/damage/dst/damage_display/001 with storage temp:_ data.delta
