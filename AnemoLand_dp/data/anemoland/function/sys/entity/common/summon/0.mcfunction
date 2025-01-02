attribute @s movement_speed base set 0.0
attribute @s jump_strength base set 0.0
attribute @s attack_damage base set 0.0

execute on passengers if entity @s[type=turtle] run attribute @s scale base set 0.0625
execute on passengers if entity @s[type=turtle] run data merge entity @s {Silent:1b,Invulnerable:1b,Age:-2147483648}

attribute @s max_health base set 1024.0
data modify entity @s Health set value 1024.0f

scoreboard players add #new_entity_id entity_id 1
scoreboard players operation @s entity_id = #new_entity_id entity_id

# particle poof ~ ~0.5 ~ 0.5 0.5 0.5 0 10