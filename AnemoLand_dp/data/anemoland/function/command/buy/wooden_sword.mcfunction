execute unless score @s gold matches 10.. run return run tellraw @s {"translate": "anemoland.general.lack_of_player_money","color":"red"}

scoreboard players remove @s gold 10

function anemoland_contents:command/give/weapon/wooden_sword/1

tellraw @s {"translate":"anemoland.general.buy","with":[[{"translate":"anemoland.weapon.wooden_sword.name"}]]}
