data modify storage temp:_ data.Recipes set value []


data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/walking_mushroom/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 20
loot replace entity @s weapon.mainhand loot anemoland_contents:item/pet/walking_mushroom/5
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 20
loot replace entity @s weapon.mainhand loot anemoland_contents:item/pet/boar/5
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 20
loot replace entity @s weapon.mainhand loot anemoland_contents:item/pet/squirrel/5
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe
kill @s
