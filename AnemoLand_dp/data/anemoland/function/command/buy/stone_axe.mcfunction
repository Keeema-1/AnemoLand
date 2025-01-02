execute unless score @s gold matches 100.. run tellraw @s {"text": "所持金が不足しています。"}
execute unless score @s gold matches 100.. run return 1

scoreboard players remove @s gold 100

function anemoland_contents:command/give/weapon/stone_axe/1

tellraw @s {"text": "石の斧 を購入しました。"}
