
data modify storage temp:_ data.Recipes set value []

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 20
loot replace entity @s weapon.mainhand loot anemoland:item/pet/walking_mushroom/5
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 20
loot replace entity @s weapon.mainhand loot anemoland:item/pet/boar/5
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/spider/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 20
loot replace entity @s weapon.mainhand loot anemoland:item/pet/spider/5
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.mob_list.spider{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/raptor/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 20
loot replace entity @s weapon.mainhand loot anemoland:item/pet/raptor/5
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.mob_list.raptor{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 30
loot replace entity @s weapon.mainhand loot anemoland:item/pet/king_boar/15
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 30
loot replace entity @s weapon.mainhand loot anemoland:item/pet/martellos/15
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 30
loot replace entity @s weapon.mainhand loot anemoland:item/pet/ojinushi/20
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 30
loot replace entity @s weapon.mainhand loot anemoland:item/pet/muscleroom/25
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/bagikeros/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 30
loot replace entity @s weapon.mainhand loot anemoland:item/pet/bagikeros/30
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.mob_list.bagikeros{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

tp ~ -70 ~

kill @s
