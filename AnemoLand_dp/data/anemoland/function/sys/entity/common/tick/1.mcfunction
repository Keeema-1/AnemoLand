
execute on passengers run rotate @s ~ 0

execute if score #hostile_target.is_player temp matches 1 run tag @a[tag=hostile_target] remove hostile_target
execute unless score #hostile_target.is_player temp matches 1 run tag @e[type=#anemoland:mob_core,tag=hostile_target,distance=..64,limit=1] remove hostile_target
tag @a[tag=pet_owner] remove pet_owner
