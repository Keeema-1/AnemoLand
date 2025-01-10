execute unless score #hostile_target.exist temp matches 1 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/walk/end
execute unless score #hostile_target.exist temp matches 1 run return 1

execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

data modify storage temp:_ data.rot2vec set value {abs:0.5}
execute rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
data modify entity @s Motion set from storage temp:_ data.vec

execute if score #hostile_target.is_player temp matches 1 if entity @a[tag=hostile_target,sort=nearest,distance=..8,limit=1] run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/walk/end
execute unless score #hostile_target.is_player temp matches 1 if entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..8,limit=1] run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/walk/end
