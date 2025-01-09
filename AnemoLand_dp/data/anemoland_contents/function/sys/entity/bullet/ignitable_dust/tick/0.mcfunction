
scoreboard players add @s action_time 1

execute if score @s action_time matches 200..210 if function anemoland_contents:sys/entity/bullet/ignitable_dust/tick/disappear run return 1

execute if score @s action_time matches 300.. if function anemoland_contents:sys/entity/bullet/ignitable_dust/tick/blast run return 1

execute if score @s action_way matches 1 run tp ^ ^ ^0.02
execute if score @s action_way matches 2 run tp ^ ^ ^0.04
execute if score @s action_way matches 3 run tp ^ ^ ^0.1
execute if score @s action_way matches 4 run tp ^ ^ ^0.15

# particle minecraft:dust{color:[0.5, 0.1, 0.1], scale:2.0} ~ ~ ~ 0.3 0.3 0.3 0 1
particle minecraft:dust{color:[0.5, 0.2, 0.1], scale:2.0} ~ ~ ~ 0.5 0.5 0.5 0 1
# particle minecraft:dust{color:[0.4, 0.3, 0.1], scale:2.0} ~ ~ ~ 0.5 0.5 0.5 0 1
particle minecraft:dust{color:[0.2, 0.15, 0.05], scale:2.0} ~ ~ ~ 0.5 0.5 0.5 0 1
