
scoreboard players add @s action_time 1

execute if score @s action_time matches 60.. if function rpg:sys/entity/bullet/auto_ignite_dust/tick/blast run return 1

execute if score @s action_time matches ..40 run particle minecraft:dust{color:[0.5, 0.2, 0.1], scale:2.0} ~ ~ ~ 0.25 0.25 0.25 0 1
execute if score @s action_time matches ..20 run particle minecraft:dust{color:[0.2, 0.15, 0.05], scale:2.0} ~ ~ ~ 0.25 0.25 0.25 0 1
execute if score @s action_time matches 20.. run particle minecraft:dust{color:[0.8, 0.2, 0.1], scale:2.0} ~ ~ ~ 0.25 0.25 0.25 0 1
