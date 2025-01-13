scoreboard players add #npc.sally talk1 1
execute if score #npc.sally talk1 matches 2.. run scoreboard players set #npc.sally talk1 0
execute if score #npc.sally talk1 matches 0 run data modify entity @s text set value '[{"text": "<サリー>"}]'
execute if score #npc.sally talk1 matches 1 run data modify entity @s text set value '[{"text": "<サリー>\\n"},{"text": "よお！元気そうだな！"}]'
