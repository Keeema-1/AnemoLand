scoreboard players set #target_is_back temp 0

execute positioned ^ ^ ^-0.1 facing entity @a[tag=hostile_target,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=0.199..0.21] run scoreboard players set #target_is_back temp 1
