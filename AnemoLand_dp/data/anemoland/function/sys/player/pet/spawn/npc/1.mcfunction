scoreboard players reset @s npc1.timer

execute if score @s npc1.id matches 1 run function rpg:sys/entity/mob/girl2/summon/pet/0

execute if score @s npc1.id matches 1 run tellraw @s [{"text":"* ","color":"yellow"},{"text":"サリー","color":"aqua"},{"text": "が参加しました。"}]
