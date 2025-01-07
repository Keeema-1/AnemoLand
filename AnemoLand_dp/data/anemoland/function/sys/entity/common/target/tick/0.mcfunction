scoreboard players reset #hostile_target.exist temp
scoreboard players reset #hostile_target.is_player temp
# tellraw @a {"selector": "@s"}
execute on passengers if entity @s[type=area_effect_cloud,tag=target_recorder] on origin run function anemoland:sys/entity/common/target/tick/recorded
execute if score #hostile_target.exist temp matches 1 run return 1

execute if entity @s[tag=enemy] as @a[distance=..64,sort=nearest,gamemode=adventure,limit=1] run function anemoland:sys/entity/common/target/tick/player
execute if entity @s[tag=enemy] unless score #hostile_target.exist temp matches 1 as @e[type=#anemoland:mob_core,tag=pet,distance=..64,sort=nearest,limit=1] run function anemoland:sys/entity/common/target/tick/mob
execute if entity @s[tag=pet] as @e[type=#anemoland:mob_core,tag=enemy,distance=..64,sort=nearest,limit=1] run function anemoland:sys/entity/common/target/tick/mob

execute if score #hostile_target.exist temp matches 1 on passengers if entity @s[type=area_effect_cloud,tag=target_recorder] run data modify entity @s Owner set from storage temp:_ data.target_uuid