execute unless score @s gold matches 200.. run return run tellraw @s {"translate": "anemoland.general.lack_of_player_money","color":"red"}

scoreboard players remove @s gold 200

loot give @s loot anemoland_contents:item/armor/iron/chestplate/1

tellraw @s {"translate":"anemoland.general.buy","with":[[{"translate":"anemoland.armor.iron.chestplate.name"}]]}
