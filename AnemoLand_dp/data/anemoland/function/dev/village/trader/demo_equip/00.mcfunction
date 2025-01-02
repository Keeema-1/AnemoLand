tag @s add trader.demo
tag @s add trader.equip

data merge entity @s {NoAI:1b,Invulnerable:1b,Silent:1b,CustomNameVisible:1b,CustomName:'"装備商人"'}
data merge entity @s {VillagerData:{profession:"weaponsmith",type:"plains",level:5}}
data merge entity @s {Rotation:[90.0f,0.0f]}

# execute summon zombie run function anemoland:dev/village/trader/demo_equip/000

# data modify entity @s Offers.Recipes set from storage temp:_ data.Recipes
