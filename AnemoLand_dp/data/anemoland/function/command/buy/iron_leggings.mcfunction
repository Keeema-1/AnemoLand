execute unless score @s gold matches 200.. run tellraw @s {"text": "所持金が不足しています。"}
execute unless score @s gold matches 200.. run return 1

scoreboard players remove @s gold 200

loot give @s loot anemoland_contents:item/armor/iron/leggings/1

tellraw @s {"text": "アイアンレギンス を購入しました。"}
