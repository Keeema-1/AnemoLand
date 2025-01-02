
data modify storage temp:_ data.Recipes set value []

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/walking_mushroom/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 10
loot replace entity @s weapon.mainhand loot anemoland:item/pet/walking_mushroom/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 10
loot replace entity @s weapon.mainhand loot anemoland:item/pet/boar/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 10
loot replace entity @s weapon.mainhand loot anemoland:item/pet/king_boar/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/king_boar/helmet
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/king_boar/chestplate
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/king_boar/leggings
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/king_boar/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
loot replace entity @s weapon.mainhand loot anemoland:item/armor/king_boar/boots
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 10
loot replace entity @s weapon.mainhand loot anemoland:item/pet/martellos/1
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:1,xp:0,priceMultiplier:0.0f}
loot replace entity @s weapon.mainhand loot anemoland:item/medal/martellos/bronze
data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]
data modify storage temp:_ data.recipe.buy.count set value 5
item replace entity @s weapon.mainhand with minecraft:chainmail_helmet[minecraft:trim={material:"emerald",pattern:"silence",show_in_tooltip:false},custom_data={item_type:"armor",status:{armor:{base:2},elemental_resistance:{fire:-1}}},custom_name='{"text":"マルテロヘルム","italic":false}',attribute_modifiers={modifiers:[{type:'minecraft:armor',id:"armor.add.2",amount:0.2,operation:'add_value'}],show_in_tooltip:false},lore=['{"text":" 防御力+2","italic":false,"color":"green"}','{"text":" 火耐性-20%","italic":false,"color":"red"}'],unbreakable={show_in_tooltip:false}]
data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]
data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe

# tellraw @a {"storage": "temp:_","nbt": "data.Recipes"}

tp ~ -70 ~

kill @s
