execute if entity @s[type=player] if entity @s[gamemode=!adventure] run return 1
execute unless entity @s[distance=..64] run return 1
tag @s add hostile_target
scoreboard players set #hostile_target.exist temp 1
execute if entity @s[type=player] run scoreboard players set #hostile_target.is_player temp 1

# execute at @s run particle witch ~ ~3 ~
# execute if entity @s facing entity @s eyes rotated ~ 0 positioned ^ ^1 ^2 run particle witch ~ ~ ~

# tellraw @a ["->",{"selector":"@s"}]