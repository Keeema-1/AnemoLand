
data modify storage temp:_ data.text set from entity @s text
execute if score #event_id temp matches 1 as @e[type=marker,tag=area_info,distance=..1] run data modify storage temp:_ data.text set from entity @s data.text.1
execute if score #event_id temp matches 2 as @e[type=marker,tag=area_info,distance=..1] run data modify storage temp:_ data.text set from entity @s data.text.2
execute if score #event_id temp matches 3 as @e[type=marker,tag=area_info,distance=..1] run data modify storage temp:_ data.text set from entity @s data.text.3
execute unless score #event_id temp matches 1.. as @e[type=marker,tag=area_info,distance=..1] run data modify storage temp:_ data.text set from entity @s data.text.default
data modify entity @s text set from storage temp:_ data.text
