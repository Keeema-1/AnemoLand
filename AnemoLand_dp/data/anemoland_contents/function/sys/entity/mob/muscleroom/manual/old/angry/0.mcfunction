
execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 41..80 rotated ~ 0 run particle poof ^ ^2 ^ 0.1 0.1 0.1 0.3 3

execute if score @s action_time matches 20..60 as @a[distance=..64] at @s run playsound minecraft:entity.squid.squirt hostile @s ~ ~ ~ 2 0

execute if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/angry/end