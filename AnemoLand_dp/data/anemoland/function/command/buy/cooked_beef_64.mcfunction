execute unless score @s gold matches 100.. run tellraw @s {"text": "所持金が不足しています。"}
execute unless score @s gold matches 100.. run return 1

scoreboard players remove @s gold 100

give @s cooked_beef 64

tellraw @s {"text": "ステーキ × 64 を購入しました。"}
