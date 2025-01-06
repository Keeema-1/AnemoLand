
data modify entity @s text set value '["",{"score":{"name": "#damage.int","objective": "temp"},"italic":true},{"text":".","italic":true},{"score":{"name": "#damage.decimal","objective": "temp"},"italic":true}]'
execute if score #damage.src.attack.fire.base temp matches 1.. run data modify entity @s text set value '["",{"text":"🔥","color":"red"},{"score":{"name": "#damage.int","objective": "temp"},"italic":true},{"text":".","italic":true},{"score":{"name": "#damage.decimal","objective": "temp"},"italic":true}]'
execute if score #damage.src.attack.water.base temp matches 1.. run data modify entity @s text set value '["",{"text":"🌊","color":"blue"},{"score":{"name": "#damage.int","objective": "temp"},"italic":true},{"text":".","italic":true},{"score":{"name": "#damage.decimal","objective": "temp"},"italic":true}]'
execute if score #damage.src.attack.ice.base temp matches 1.. run data modify entity @s text set value '["",{"text":"❄","color":"aqua"},{"score":{"name": "#damage.int","objective": "temp"},"italic":true},{"text":".","italic":true},{"score":{"name": "#damage.decimal","objective": "temp"},"italic":true}]'
execute if score #damage.src.attack.thunder.base temp matches 1.. run data modify entity @s text set value '["",{"text":"⚡","color":"yellow"},{"score":{"name": "#damage.int","objective": "temp"},"italic":true},{"text":".","italic":true},{"score":{"name": "#damage.decimal","objective": "temp"},"italic":true}]'

data modify storage temp:_ data.CustomName set from entity @s text

kill @s
