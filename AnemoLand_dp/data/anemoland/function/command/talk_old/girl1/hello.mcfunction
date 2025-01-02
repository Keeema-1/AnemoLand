scoreboard players set #npc.girl1 talk0 3
scoreboard players set #npc.girl1 talk1 0
execute as @e[type=text_display,tag=girl1,tag=display1] run data modify entity @s text set value '{"text":"<ナビゲーター マキ>","color":"aqua"}'
