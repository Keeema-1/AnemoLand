execute unless score @s gold matches 400.. run return run tellraw @s {"translate": "anemoland.general.lack_of_player_money","color":"red"}

scoreboard players remove @s gold 400

loot give @s loot anemoland_contents:item/tool/fishing_rod/big_only

tellraw @s {"translate":"anemoland.general.buy","with":[[{"translate":"anemoland.tool.fishing_rod.big_only.name"}]]}
