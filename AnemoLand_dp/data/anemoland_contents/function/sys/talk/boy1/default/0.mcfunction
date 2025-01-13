scoreboard players add #npc.boy1 talk1 1
execute if score #npc.boy1 talk1 matches 2.. run scoreboard players set #npc.boy1 talk1 0
execute if score #npc.boy1 talk1 matches 0 run data modify entity @s text set value '[{"text": "<ミナト>"}]'
execute if score #npc.boy1 talk1 matches 1 run data modify entity @s text set value '[{"text": "<ミナト>\\n"},{"text": "あ、どうも..."}]'
