scoreboard players set @s action1 1
scoreboard players set @s action_time 0

execute as @a[distance=..64] at @s run playsound minecraft:entity.hoglin.attack hostile @s ~ ~ ~ 2 0.7
execute as @a[distance=..64] at @s run playsound minecraft:entity.hoglin.attack hostile @s ~ ~ ~ 2 0.8