
execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# execute if score @s action_time matches 30..40 rotated ~ 0 run particle poof ^ ^4 ^4 0.1 0.1 0.1 0 1
# execute if score @s action_time matches 41..60 rotated ~ 0 run particle poof ^ ^3 ^4 0.1 0.1 0.1 0 1
execute if score @s action_time matches 30..40 rotated ~ 0 run particle poof ^ ^4 ^4 0.1 0.1 0.1 0 1
execute if score @s action_time matches 41..60 rotated ~ 0 run particle poof ^ ^3 ^4 0.1 0.1 0.1 0 1

execute if score @s action_time matches 20..60 as @a[distance=..64] at @s run playsound entity.polar_bear.warning hostile @s ~ ~ ~ 1 0.3

execute if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/martellos/tick/action/4_anger/end