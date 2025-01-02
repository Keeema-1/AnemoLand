execute if score #npc.girl1 talk1 matches -1 run return 1
scoreboard players set #npc.girl1 talk0 17
scoreboard players set #npc.girl1 talk1 0
schedule function anemoland:sys/entity/npc/girl1/talk/tutorial_hint/0 20t
