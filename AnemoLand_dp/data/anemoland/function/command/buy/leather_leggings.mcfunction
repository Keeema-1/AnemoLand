execute unless score @s gold matches 50.. run tellraw @s {"text": "所持金が不足しています。"}
execute unless score @s gold matches 50.. run return 1

scoreboard players remove @s gold 50

loot give @s loot anemoland_contents:item/armor/leather/leggings/1

tellraw @s {"text": "革のズボン を購入しました。"}
