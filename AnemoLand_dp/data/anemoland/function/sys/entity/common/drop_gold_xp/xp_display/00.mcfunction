
data modify entity @s text set value '["",{"text":"Xp +","color": "green","italic":true},{"score":{"name": "#xp.display","objective": "temp"},"color": "green","italic":true}]'

data modify storage temp:_ data.CustomName set from entity @s text

kill @s
