
scoreboard players add @s action_time 1

execute if score @s action_time matches 100.. if function anemoland_contents:sys/entity/bullet/firework/tick/disappear run return 1

execute if score @s action_time matches ..5 at @s run tp ~ ~0.6 ~
execute if score @s action_time matches 6..10 at @s run tp ~ ~0.4 ~
execute if score @s action_time matches 11..20 at @s run tp ~ ~0.1 ~
execute if score @s action_time matches 21..30 at @s run tp ~ ~-0.1 ~
execute if score @s action_time matches 31..40 at @s run tp ~ ~-0.4 ~
execute if score @s action_time matches 41.. at @s run tp ~ ~-0.6 ~

execute if score @s action_way matches 0 at @s rotated ~ 0 run tp ^ ^ ^0.4
execute if score @s action_way matches 1 at @s rotated ~ 0 run tp ^ ^ ^0.3
execute if score @s action_way matches 2 at @s rotated ~ 0 run tp ^ ^ ^0.2
execute if score @s action_way matches 3 at @s rotated ~ 0 run tp ^ ^ ^0.1

execute if predicate anemoland:random_chance/0_2 run particle flame ~ ~ ~ 0 0 0 0.01 1

execute unless score @s action_time matches 80 at @s if block ~ ~ ~ #anemoland:space positioned ~-2 ~-1 ~-2 if entity @a[dx=3,dy=3,dz=3,gamemode=adventure] positioned ~2 ~1 ~2 run function anemoland_contents:sys/entity/bullet/firework/tick/blast

execute unless score @s action_time matches 80 at @s unless block ~ ~ ~ #anemoland:space positioned ~ ~1 ~ run function anemoland_contents:sys/entity/bullet/firework/tick/blast

execute if score @s action_time matches 80 run function anemoland_contents:sys/entity/bullet/firework/tick/blast
