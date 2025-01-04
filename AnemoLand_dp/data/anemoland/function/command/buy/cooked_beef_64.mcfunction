execute unless score @s gold matches 100.. run return run tellraw @s {"translate": "anemoland.general.lack_of_player_money","color":"red"}

scoreboard players remove @s gold 100

give @s cooked_beef 64

tellraw @s {"translate":"anemoland.general.buy","with":[[{"translate":"anemoland.item.food.steak"},{"text":" × 64"}]]}
