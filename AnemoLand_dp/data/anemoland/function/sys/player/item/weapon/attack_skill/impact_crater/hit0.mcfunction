execute if predicate anemoland:effect/leviation run return 1

# execute store result score #motion.y temp run data get entity @s Motion[1] 10
# tellraw @a {"score":{"name":"#motion.y","objective":"temp"}}

scoreboard players set @s action0 3
scoreboard players set @s action1 1
scoreboard players reset @s action_time

playsound minecraft:entity.wind_charge.wind_burst hostile @s ~ ~ ~ 2 0
playsound minecraft:entity.wind_charge.wind_burst hostile @s ~ ~ ~ 2 0

effect give @s levitation 1 30 true

scoreboard players set #gauge_consume temp 0
