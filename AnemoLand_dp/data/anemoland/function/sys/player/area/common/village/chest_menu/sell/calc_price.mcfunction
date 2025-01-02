scoreboard players set #sell_price_add temp 0
execute if data storage temp:_ data.Items2[0].components."minecraft:custom_data".sell_price store result score #sell_price_add temp run data get storage temp:_ data.Items2[0].components."minecraft:custom_data".sell_price
scoreboard players operation #sell_price_total temp += #sell_price_add temp

data remove storage temp:_ data.Items2[0]

execute if data storage temp:_ data.Items2[0] run function anemoland:sys/player/area/common/village/chest_menu/sell/calc_price