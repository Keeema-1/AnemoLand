execute unless score @s gold matches 30.. run return run tellraw @s {"translate": "anemoland.general.lack_of_player_money","color":"red"}

scoreboard players remove @s gold 30

give @s cooked_beef 16

tellraw @s {"translate":"anemoland.general.buy","with":[[{"translate":"anemoland.item.food.steak"},{"text":" × 16"}]]}
