scoreboard players set #npc.girl2 talk0 1
scoreboard players set #npc.girl2 talk1 0
execute as @e[type=text_display,tag=girl2,tag=display1] run data modify entity @s text set value '{"text":"<サリー>"}'
