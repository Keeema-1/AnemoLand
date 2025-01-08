
data modify entity @s Health set value 1024.0f

scoreboard players operation #entity_id temp = @s entity_id
# data modify storage temp:_ data.motion set value {speed:0.4}
# execute anchored eyes positioned ^ ^ ^ as @e[type=#anemoland:mob_core,tag=mob_root,distance=..32] if score @s entity_id = #entity_id temp facing entity @s eyes rotated ~ 0 run return run execute unless block ~ 1 ~ #anemoland:space run function anemoland:sys/entity/common/motion/0
execute as @e[type=#anemoland:mob_core,tag=mob_root,distance=..32] if score @s entity_id = #entity_id temp run return run function anemoland:sys/entity/common/motion/0

kill @s
