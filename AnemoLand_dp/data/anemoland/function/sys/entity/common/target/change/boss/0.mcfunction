scoreboard players reset #new_target.exist temp

execute if entity @s[tag=enemy] as @e[type=#anemoland:mob_core,tag=player_side,tag=boss,distance=..32,sort=nearest,limit=1] run function anemoland:sys/entity/common/target/change/target
execute if entity @s[tag=pet] as @e[type=#anemoland:mob_core,tag=enemy,tag=boss,distance=..32,sort=nearest,limit=1] run function anemoland:sys/entity/common/target/change/target

execute if score #new_target.exist temp matches 1.. run function anemoland:sys/entity/common/target/change/summon_aec
