execute unless score @s gold matches 300.. run tellraw @s {"text": "所持金が不足しています。"}
execute unless score @s gold matches 300.. run return 1

scoreboard players remove @s gold 300

function anemoland_contents:command/give/weapon/iron_sword/1

tellraw @s {"text": "鉄の剣 を購入しました。"}
