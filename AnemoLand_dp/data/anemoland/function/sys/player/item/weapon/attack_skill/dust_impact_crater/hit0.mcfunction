execute if predicate anemoland:effect/leviation run return 1

scoreboard players set @s action0 4
scoreboard players set @s action1 1
scoreboard players reset @s action_time

playsound minecraft:entity.wind_charge.wind_burst hostile @s ~ ~ ~ 2 0
playsound minecraft:entity.wind_charge.wind_burst hostile @s ~ ~ ~ 2 0

effect give @s levitation 1 30 true

scoreboard players set #gauge_consume temp 0
