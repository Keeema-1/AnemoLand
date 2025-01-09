# tellraw @a {"score":{"name":"@s","objective":"action_way"}}
scoreboard players set @s action_way 0
execute at @p if entity @s[distance=..8] run scoreboard players set @s action_way 1
execute if score @s action_way matches 0 at @p if entity @s[distance=..12] run scoreboard players set @s action_way 2
execute if score @s action_way matches 0 at @p if entity @s[distance=..16] run scoreboard players set @s action_way 3
execute if score @s action_way matches 0 at @p if entity @s[distance=..20] run scoreboard players set @s action_way 4
execute if score @s action_way matches 0 at @p if entity @s[distance=..32] run scoreboard players set @s action_way 5

scoreboard players operation #action_way temp = @s action_way
function rpg:sys/entity/bullet/dirt/summon
