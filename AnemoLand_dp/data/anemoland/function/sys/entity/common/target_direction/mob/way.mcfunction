scoreboard players set #target_way_lrfb temp 0

execute positioned ^0.1 ^ ^ facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..64,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.075] run scoreboard players set #target_way_lrfb temp 1
execute positioned ^ ^ ^-0.1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..64,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.075] run scoreboard players set #target_way_lrfb temp 2
execute positioned ^ ^ ^0.1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..64,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.075] run scoreboard players set #target_way_lrfb temp 3
