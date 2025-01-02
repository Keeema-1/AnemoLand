
data modify storage temp:_ data.Recipes set value []

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe



data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe



data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe



data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe



data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 3
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 3
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 3
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe



# data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
# loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/silver
# data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.buy.count set value 2
# loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/bronze
# data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.sell.count set value 3
# execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

# data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
# loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/bronze
# data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.buy.count set value 1
# loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
# data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.sell.count set value 1
# execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 3
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

# data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
# loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
# data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.buy.count set value 3
# loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/bronze
# data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.sell.count set value 1
# execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 3
loot replace entity @s weapon.mainhand loot anemoland:item/medal/ojinushi/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe



# data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
# loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/silver
# data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.buy.count set value 2
# loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/bronze
# data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.sell.count set value 3
# execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

# data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
# loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/bronze
# data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.buy.count set value 1
# loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
# data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.sell.count set value 1
# execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

# data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
# loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/bronze
# data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.buy.count set value 3
# loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/bronze
# data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
# data modify storage temp:_ data.recipe.sell.count set value 1
# execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 3
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 3
loot replace entity @s weapon.mainhand loot anemoland:item/medal/muscleroom/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

tp ~ -70 ~

kill @s
