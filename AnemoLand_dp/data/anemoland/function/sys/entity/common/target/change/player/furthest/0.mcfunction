scoreboard players reset #new_target.exist temp

execute if entity @s[tag=enemy] as @a[distance=..32,gamemode=!spectator,gamemode=!creative,sort=furthest,limit=1] run function anemoland:sys/entity/common/target/change/target

# execute if score #new_target.exist temp matches 1.. on passengers if entity @s[type=area_effect_cloud,tag=target_recorder] run data modify entity @s Owner set from storage temp:_ data.target_uuid

execute if score #new_target.exist temp matches 1.. run function anemoland:sys/entity/common/target/change/summon_aec

execute unless score #new_target.exist temp matches 1.. run function anemoland:sys/entity/common/target/change/nearest/0
