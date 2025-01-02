
data modify entity @s text set value '["",{"text":"Gold +","color": "yellow","italic":true},{"score":{"name": "#gold.display","objective": "temp"},"color": "yellow","italic":true}]'

data modify storage temp:_ data.CustomName set from entity @s text

kill @s
