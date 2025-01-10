scoreboard players set #self_is_leftside temp 0

execute positioned ^-0.1 ^ ^ facing entity @s feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.1414] run scoreboard players set #self_is_leftside temp 1
# execute positioned ^-0.1 ^ ^ facing entity @s feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @e[tag=direction_src,distance=..0.1414] run scoreboard players set #self_is_leftside temp 1
