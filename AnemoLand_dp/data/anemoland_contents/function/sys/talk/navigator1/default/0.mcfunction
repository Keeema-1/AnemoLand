scoreboard players add #npc.navigator1 talk1 1
execute if score #npc.navigator1 talk1 matches 2.. run scoreboard players set #npc.navigator1 talk1 0
execute if score #npc.navigator1 talk1 matches 0 run data modify entity @s text set value '[{"text": "<ナビゲーター マキ>"}]'
execute if score #npc.navigator1 talk1 matches 1 run data modify entity @s text set value '[{"text": "<ナビゲーター マキ>\\n"},{"text": "こんにちは！"}]'
