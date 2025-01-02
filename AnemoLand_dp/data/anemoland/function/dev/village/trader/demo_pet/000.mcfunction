
data modify storage temp:_ data.Recipes set value []

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 30
loot replace entity @s weapon.mainhand loot anemoland:item/pet/walking_mushroom/0
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 30
loot replace entity @s weapon.mainhand loot anemoland:item/pet/boar/5
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 30
loot replace entity @s weapon.mainhand loot anemoland:item/pet/king_boar/15
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 30
loot replace entity @s weapon.mainhand loot anemoland:item/pet/martellos/20
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 30
loot replace entity @s weapon.mainhand loot anemoland:item/pet/ojinushi/25
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 30
loot replace entity @s weapon.mainhand loot anemoland:item/pet/muscleroom/30
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

tp ~ -70 ~

kill @s
