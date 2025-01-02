
scoreboard players operation #player_id temp = @s player_id
execute as @e[type=#rpg:mob_core,distance=..128,tag=pet,tag=!npc] if score @s player_id = #player_id temp run function anemoland:sys/entity/common/remove/0
