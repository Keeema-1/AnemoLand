execute unless score @s gold matches 100.. run tellraw @s {"text": "所持金が不足しています。"}
execute unless score @s gold matches 100.. run return 1

scoreboard players remove @s gold 100

loot give @s loot anemoland_contents:item/tool/fishing_rod/normal

tellraw @s {"text": "釣竿を購入しました。"}
