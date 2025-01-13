scoreboard players set #npc.sally talk0 16
scoreboard players set #npc.sally talk1 0
execute as @e[type=text_display,tag=sally,tag=display1] run data modify entity @s text set value '{"text":"<サリー>","color":"aqua"}'
