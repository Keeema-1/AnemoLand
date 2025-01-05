scoreboard players add @s timer 1

execute if score @s timer matches 1 run data modify storage temp:_ data.Rotation set from entity @s Rotation
execute if score @s timer matches 1 run data modify storage temp:_ data.Rotation[1] set value -85.0f
execute if score @s timer matches 1 on passengers run data modify entity @s Rotation set from storage temp:_ data.Rotation

execute if score @s timer matches 1 on passengers run data modify entity @s text set value '"\\ue100"'
execute if score @s timer matches 2 on passengers run data modify entity @s text set value '"\\ue101"'
execute if score @s timer matches 3 on passengers run data modify entity @s text set value '"\\ue102"'
execute if score @s timer matches 4 on passengers run data modify entity @s text set value '"\\ue103"'
execute if score @s timer matches 5 on passengers run data modify entity @s text set value '"\\ue104"'
execute if score @s timer matches 6 on passengers run data modify entity @s text set value '"\\ue105"'
execute if score @s timer matches 7 on passengers run data modify entity @s text set value '"\\ue106"'
execute if score @s timer matches 8 on passengers run data modify entity @s text set value '"\\ue107"'

execute if score @s timer matches 9.. on passengers run kill @s
execute if score @s timer matches 9.. run kill @s
