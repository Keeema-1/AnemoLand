scoreboard players set @s action1 2
scoreboard players set @s action_time 0

execute rotated ~ 0 positioned ^ ^ ^2 rotated ~ 0 run particle cloud ^ ^ ^3
execute rotated ~ 0 positioned ^ ^ ^2 rotated ~30 0 run particle cloud ^ ^ ^3
execute rotated ~ 0 positioned ^ ^ ^2 rotated ~60 0 run particle cloud ^ ^ ^3
execute rotated ~ 0 positioned ^ ^ ^2 rotated ~90 0 run particle cloud ^ ^ ^3
execute rotated ~ 0 positioned ^ ^ ^2 rotated ~120 0 run particle cloud ^ ^ ^3
execute rotated ~ 0 positioned ^ ^ ^2 rotated ~150 0 run particle cloud ^ ^ ^3
execute rotated ~ 0 positioned ^ ^ ^2 rotated ~180 0 run particle cloud ^ ^ ^3
execute rotated ~ 0 positioned ^ ^ ^2 rotated ~210 0 run particle cloud ^ ^ ^3
execute rotated ~ 0 positioned ^ ^ ^2 rotated ~240 0 run particle cloud ^ ^ ^3
execute rotated ~ 0 positioned ^ ^ ^2 rotated ~270 0 run particle cloud ^ ^ ^3
execute rotated ~ 0 positioned ^ ^ ^2 rotated ~300 0 run particle cloud ^ ^ ^3
execute rotated ~ 0 positioned ^ ^ ^2 rotated ~330 0 run particle cloud ^ ^ ^3

execute as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 1