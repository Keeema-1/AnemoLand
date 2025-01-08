execute unless score @s ice_veil_time matches 200.. if predicate anemoland:is_sprinting run return run scoreboard players reset @s ice_veil_time
execute unless score @s ice_veil_time matches 200.. if entity @s[tag=cannot_avoid] run return run scoreboard players reset @s ice_veil_time
execute unless score @s ice_veil_time matches 201.. run scoreboard players add @s ice_veil_time 1

# particle minecraft:snowflake ~ ~1 ~ 0.3 1 0.3 0 1

execute if score @s ice_veil_time matches 200.. if predicate anemoland:random_chance/0_5 run particle minecraft:dust{color:[0.8, 1.0, 1.0], scale:1.0} ~ ~1 ~ 0.3 0.6 0.3 1 1
