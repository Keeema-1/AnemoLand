execute if entity @s[tag=pet,tag=!following_player] unless entity @e[type=#rpg:mob_core,tag=enemy,distance=..64] run function rpg:sys/entity/mob/martellos/tick/action/follow_player/start
execute if entity @s[tag=pet,tag=following_player] run function rpg:sys/entity/mob/martellos/tick/action/follow_player/0
execute if entity @s[tag=pet,tag=following_player] run return 1
scoreboard players add @s action_time 1
function rpg:sys/entity/mob/martellos/tick/action/branch
