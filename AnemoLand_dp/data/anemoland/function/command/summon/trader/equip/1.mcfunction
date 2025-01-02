# kill @e[type=villager,tag=trader,tag=trader.equip,tag=trader.equip.1]

summon villager ~ ~ ~ {Tags:["trader.equip.1","trader.equip","trader"],NoAI:1b,Invulnerable:1b,Silent:1b,CustomNameVisible:1b,CustomName:'"装備商人"',VillagerData:{profession:"weaponsmith",type:"plains",level:5},Rotation:[90.0f,0.0f],Offers:{Recipes:[]}}
