execute unless score @s gold matches 50.. run return run tellraw @s {"translate": "anemoland.general.lack_of_player_money","color":"red"}

scoreboard players remove @s gold 50

loot give @s loot anemoland_contents:item/armor/leather/boots/1

tellraw @s {"translate":"anemoland.general.buy","with":[[{"translate":"anemoland.armor.leather.boots.name"}]]}
