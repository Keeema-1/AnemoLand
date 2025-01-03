data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/iron/helmet/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/bagikeros/gold
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/bagikeros/helmet/3
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.bagikeros{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/iron/chestplate/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/bagikeros/gold
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/bagikeros/chestplate/3
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.bagikeros{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/iron/leggings/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/bagikeros/gold
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/bagikeros/leggings/3
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.bagikeros{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/iron/boots/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/bagikeros/gold
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/bagikeros/boots/3
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.bagikeros{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/weapon/iron_axe/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/bagikeros/gold
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 10
loot replace entity @s weapon.mainhand loot anemoland_contents:item/weapon/bagikeros_hammer/3
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.bagikeros{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe
