
data modify entity @s text set value '["",{"score":{"name": "#damage","objective": "temp"},"color": "white","italic":true}]'
execute if data storage temp:_ data.elemental_attack.fire run data modify entity @s text set value '["",{"text":"🔥","color":"red"},{"score":{"name": "#damage","objective": "temp"},"color": "white","italic":true}]'
execute if data storage temp:_ data.elemental_attack.water run data modify entity @s text set value '["",{"text":"💧","color":"blue"},{"score":{"name": "#damage","objective": "temp"},"color": "white","italic":true}]'
execute if data storage temp:_ data.elemental_attack.ice run data modify entity @s text set value '["",{"text":"❄","color":"aqua"},{"score":{"name": "#damage","objective": "temp"},"color": "white","italic":true}]'
execute if data storage temp:_ data.elemental_attack.thunder run data modify entity @s text set value '["",{"text":"⚡️","color":"yellow"},{"score":{"name": "#damage","objective": "temp"},"color": "white","italic":true}]'

data modify storage temp:_ data.CustomName set from entity @s text

kill @s
