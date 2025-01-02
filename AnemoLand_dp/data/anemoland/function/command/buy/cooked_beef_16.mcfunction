execute unless score @s gold matches 30.. run tellraw @s {"text": "所持金が不足しています。"}
execute unless score @s gold matches 30.. run return 1

scoreboard players remove @s gold 30

give @s cooked_beef 16

tellraw @s {"text": "ステーキ × 16 を購入しました。"}
