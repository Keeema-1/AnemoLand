execute if score #npc.navigator1 talk1 matches -1 run return 1
scoreboard players set #npc.navigator1 talk0 13
scoreboard players set #npc.navigator1 talk1 0
schedule function anemoland_contents:sys/talk/navigator1/tutorial_menu/0 20t
