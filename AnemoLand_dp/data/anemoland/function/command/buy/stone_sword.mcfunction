execute unless score @s gold matches 100.. run return run tellraw @s {"translate": "anemoland.general.lack_of_player_money","color":"red"}

scoreboard players remove @s gold 100

function anemoland_contents:command/give/weapon/stone_sword/1

tellraw @s {"translate":"anemoland.general.buy","with":[[{"translate":"anemoland.weapon.stone_sword.name"}]]}
