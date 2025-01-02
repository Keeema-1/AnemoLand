execute unless score @s gold matches 10.. run tellraw @s {"text": "所持金が不足しています。"}
execute unless score @s gold matches 10.. run return 1

scoreboard players remove @s gold 10

function anemoland_contents:command/give/weapon/wooden_sword/1

tellraw @s {"text": "木の剣 を購入しました。"}
