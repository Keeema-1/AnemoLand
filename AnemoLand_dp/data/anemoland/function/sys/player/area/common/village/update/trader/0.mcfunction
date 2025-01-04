
data remove entity @s Offers.Recipes
data modify storage temp:_ data.Recipes set value []

execute if entity @s[tag=trader.exchange] run function anemoland:sys/player/area/common/village/update/trader/exchange/branch
execute if entity @s[tag=trader.equip] run function anemoland:sys/player/area/common/village/update/trader/equip/branch
execute if entity @s[tag=trader.pet] run function anemoland:sys/player/area/common/village/update/trader/pet/branch

data modify entity @s Offers.Recipes set from storage temp:_ data.Recipes
data remove storage temp:_ data.Recipes
