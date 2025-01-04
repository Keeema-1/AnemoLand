execute unless score @s gold matches 300.. run return run tellraw @s {"translate": "anemoland.general.lack_of_player_money","color":"red"}

scoreboard players remove @s gold 300

function anemoland_contents:command/give/weapon/iron_sword/1

tellraw @s {"translate":"anemoland.general.buy","with":[[{"translate":"anemoland.weapon.iron_sword.name"}]]}
