scoreboard players reset #new_target.exist temp
execute on attacker if entity @s run function anemoland:sys/entity/common/target/change/target

# tellraw @a {"selector": "@s"}
execute if score #new_target.exist temp matches 1.. run function anemoland:sys/entity/common/target/change/summon_aec

# execute if score #new_target.exist temp matches 1.. on passengers if entity @s[type=area_effect_cloud,tag=target_recorder] run data modify entity @s Owner set from storage temp:_ data.target_uuid

execute unless score #new_target.exist temp matches 1.. run function anemoland:sys/entity/common/target/change/player/nearest/0

# execute on passengers if entity @s[tag=target_recorder] on origin run tellraw @a ["-> ",{"selector": "@s"}]
