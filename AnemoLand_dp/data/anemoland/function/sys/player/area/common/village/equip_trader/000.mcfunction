
data modify storage temp:_ data.Recipes set value []

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/leather/helmet/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/king_boar/helmet/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.king_boar{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/leather/chestplate/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/king_boar/chestplate/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.king_boar{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/leather/leggings/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/king_boar/leggings/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.king_boar{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/leather/boots/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/king_boar/boots/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.king_boar{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/weapon/iron_axe/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 10
loot replace entity @s weapon.mainhand loot anemoland:item/weapon/king_boar_axe/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.king_boar{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/iron/helmet/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/martellos/helmet/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.martellos{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/iron/chestplate/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/martellos/chestplate/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.martellos{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/iron/leggings/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/martellos/leggings/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.martellos{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/iron/boots/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/martellos/boots/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.martellos{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/weapon/iron_axe/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 10
loot replace entity @s weapon.mainhand loot anemoland:item/weapon/martellos_hammer/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.martellos{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/iron/helmet/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/ojinushi/helmet/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.ojinushi{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/iron/chestplate/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/ojinushi/chestplate/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.ojinushi{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/iron/leggings/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/ojinushi/leggings/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.ojinushi{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/iron/boots/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/ojinushi/boots/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.ojinushi{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/weapon/iron_sword/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 10
loot replace entity @s weapon.mainhand loot anemoland:item/weapon/ojinushi_katana/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.ojinushi{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/leather/helmet/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/muscleroom/helmet/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.muscleroom{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/leather/chestplate/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/muscleroom/chestplate/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.muscleroom{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/leather/leggings/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/muscleroom/leggings/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.muscleroom{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/leather/boots/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/muscleroom/boots/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.muscleroom{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/weapon/iron_axe/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 10
loot replace entity @s weapon.mainhand loot anemoland:item/weapon/muscleroom_mace/2
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.muscleroom{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/iron/helmet/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/bagikeros/gold
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/bagikeros/helmet/3
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.bagikeros{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/iron/chestplate/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/bagikeros/gold
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/bagikeros/chestplate/3
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.bagikeros{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/iron/leggings/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/bagikeros/gold
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/bagikeros/leggings/3
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.bagikeros{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/armor/iron/boots/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/bagikeros/gold
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/bagikeros/boots/3
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.bagikeros{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/weapon/iron_axe/1
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/bagikeros/gold
data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buyB.count set value 10
loot replace entity @s weapon.mainhand loot anemoland:item/weapon/bagikeros_hammer/3
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
execute if data storage anemoland:progress data.armor.bagikeros{unlocked:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

tp ~ -70 ~

kill @s
