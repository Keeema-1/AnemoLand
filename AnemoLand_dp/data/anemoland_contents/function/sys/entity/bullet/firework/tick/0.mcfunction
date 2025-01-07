
scoreboard players add @s action_time 1

execute if score @s action_time matches 100.. if function rpg:sys/entity/bullet/firework/tick/disappear run return 1

tp ^ ^ ^1.5

execute if predicate rpg:random_chance/0_2 run particle flame ~ ~ ~ 0 0 0 0.01 1

execute unless score @s action_time matches 40 at @s if block ~ ~ ~ #rpg:space positioned ~-2 ~-2 ~-2 if entity @a[dx=3,dy=3,dz=3,gamemode=adventure] positioned ~2 ~2 ~2 run function rpg:sys/entity/bullet/firework/tick/blast

execute unless score @s action_time matches 40 at @s unless block ~ ~ ~ #rpg:space positioned ^ ^ ^-1.5 run function rpg:sys/entity/bullet/firework/tick/blast

execute if score @s action_time matches 40 run function rpg:sys/entity/bullet/firework/tick/blast
