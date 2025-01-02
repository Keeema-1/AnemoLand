# kill @e[type=villager,tag=trader,tag=trader.pet,tag=trader.pet.1]

summon villager ~ ~ ~ {Tags:["trader.pet.1","trader.pet","trader"],NoAI:1b,Invulnerable:1b,Silent:1b,CustomNameVisible:1b,CustomName:'"ペット商人"',VillagerData:{profession:"fletcher",type:"plains",level:5},Rotation:[90.0f,0.0f],Offers:{Recipes:[]}}
