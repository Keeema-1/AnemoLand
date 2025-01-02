tag @s add trader.1

data merge entity @s {NoAI:1b,Invulnerable:1b}
# data merge entity @s {Offers:{Recipes:[{sell:{id:"stick",count:1},buy:{id:"yellow_dye",count:1,components:{"minecraft:custom_model_data":40,"minecraft:custom_name":'{"text":"マルテロスメダル【ブロンズ】","italic":false,"color":"gold"}',"minecraft:custom_data":{id:"martellos_bronze_medal",item_type:"material"}}},rewardExp:false,maxUses:1000000,xp:0,priceMultiplier:0.0f}]}}
data merge entity @s {VillagerData:{profession:"none",type:"plains",level:5}}
data merge entity @s {Rotation:[90.0f,0.0f]}

execute summon zombie run function anemoland:dev/village/trader/1/000

data modify entity @s Offers.Recipes set from storage temp:_ data.Recipes

# data merge entity @s {Offers:{Recipes:[{sell:{id:"stick",count:1},buy:{id:"yellow_dye",count:1},maxUses:12,priceMultiplier:0.05f,xp:0}]}}

# data merge entity @s {NoAI:1b,Offers:{Recipes:[{sell:{id:"stick",count:1},buy:{id:"yellow_dye",count:1},maxUses:12,priceMultiplier:0.05f,xp:0}]},VillagerData:{profession:"weaponsmith",type:"plains",level:1}}

# attribute @s movement_speed base set 0.0
