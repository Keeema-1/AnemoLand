execute unless score @s gold matches 400.. run return run tellraw @s {"translate": "anemoland.general.lack_of_player_money","color":"red"}

scoreboard players remove @s gold 400

loot give @s loot anemoland_contents:item/misc/random_event_changer
loot give @s loot anemoland_contents:item/misc/random_event_changer
loot give @s loot anemoland_contents:item/misc/random_event_changer
loot give @s loot anemoland_contents:item/misc/random_event_changer

tellraw @s {"translate":"anemoland.general.buy","with":[[{"translate":"anemoland.item.misc.random_event_changer.name"},{"text":" × 4"}]]}
