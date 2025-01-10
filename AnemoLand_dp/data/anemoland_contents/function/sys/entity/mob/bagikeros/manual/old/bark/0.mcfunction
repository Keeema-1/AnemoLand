
execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 60..100 rotated ~ 0 run particle flash ^ ^1 ^6 0 0 0 0 1

execute if score @s action_time matches 55..110 as @a[distance=..64] at @s run playsound entity.polar_bear.warning hostile @s ~ ~ ~ 1 0.6

execute if score @s action_time matches 160.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/bark/end