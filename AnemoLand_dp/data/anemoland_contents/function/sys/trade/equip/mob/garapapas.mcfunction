data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/leather/helmet/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 4
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/garapapas/helmet/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.garapapas{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/leather/chestplate/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 4
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/garapapas/chestplate/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.garapapas{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/leather/leggings/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 4
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/garapapas/leggings/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.garapapas{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/leather/boots/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 4
loot replace entity @s weapon.mainhand loot anemoland_contents:item/armor/garapapas/boots/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.garapapas{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

# data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
# loot replace entity @s weapon.mainhand loot anemoland_contents:item/weapon/leather_axe/1
# data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.buy.count set value 1
# loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/bronze
# data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.buyB.count set value 10
# loot replace entity @s weapon.mainhand loot anemoland_contents:item/weapon/garapapas_hammer/1
# data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
# execute if data storage anemoland:progress data.armor.garapapas{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe
