data modify storage temp:_ data.Recipes set value []

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe


data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/walking_mushroom/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/walking_mushroom/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/walking_mushroom/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/walking_mushroom/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/walking_mushroom/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/walking_mushroom/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/walking_mushroom/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/walking_mushroom/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/walking_mushroom/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/walking_mushroom/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/boar/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/boar/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/boar/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/boar/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/boar/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/boar/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/boar/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/boar/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/boar/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapas/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapas/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.garapas{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapas/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapas/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.garapas{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapas/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.garapas{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapas/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.garapas{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapas/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.garapas{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapas/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.garapas{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapas/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.garapas{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapas/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.garapas{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/spider/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/spider/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.spider{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/spider/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/spider/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.spider{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/spider/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.spider{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/spider/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.spider{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/spider/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.spider{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/spider/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.spider{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/spider/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.spider{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/spider/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.spider{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/raptor/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/raptor/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.raptor{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/raptor/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/raptor/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.raptor{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/raptor/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.raptor{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/raptor/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.raptor{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/raptor/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.raptor{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/raptor/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.raptor{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/raptor/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.raptor{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/raptor/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.raptor{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/king_boar/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/king_boar/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/king_boar/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/king_boar/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/king_boar/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/king_boar/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/king_boar/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel_head/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel_head/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel_head/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel_head/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel_head/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel_head/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel_head/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel_head/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel_head/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/squirrel_head/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.garapapas{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.garapapas{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.garapapas{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.garapapas{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.garapapas{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.garapapas{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.garapapas{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/garapapas/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.garapapas{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/martellos/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/martellos/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/martellos/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/martellos/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/martellos/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/martellos/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/martellos/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.martellos{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/ojinushi/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/ojinushi/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/ojinushi/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/ojinushi/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/ojinushi/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/ojinushi/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/muscleroom/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 2
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 3
execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/muscleroom/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 1
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/silver
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/muscleroom/silver
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} if data storage anemoland:progress data.rank{silver:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:10000,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/common/gold
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland_contents:item/medal/muscleroom/gold
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.sell.count set value 1
execute if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} if data storage anemoland:progress data.rank{gold:1b} run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe
kill @s
