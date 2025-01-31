execute unless score @s gold matches 100.. run return run tellraw @s {"translate": "anemoland.general.lack_of_player_money","color":"red"}

scoreboard players remove @s gold 100

give @s bundle

tellraw @s {"translate":"anemoland.general.buy","with":[[{"translate":"anemoland.item.misc.bundle.name"}]]}
