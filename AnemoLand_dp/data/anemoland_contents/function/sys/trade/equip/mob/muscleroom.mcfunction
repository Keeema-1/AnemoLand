data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/leather/helmet/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/muscleroom/helmet/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.muscleroom{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/leather/chestplate/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/muscleroom/chestplate/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.muscleroom{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/leather/leggings/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/muscleroom/leggings/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.muscleroom{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/leather/boots/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/muscleroom/boots/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.muscleroom{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/weapon/iron_axe/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 10
loot replace entity @s weapon.mainhand loot anemoland_contents:item/weapon/muscleroom_mace/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.muscleroom{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe
