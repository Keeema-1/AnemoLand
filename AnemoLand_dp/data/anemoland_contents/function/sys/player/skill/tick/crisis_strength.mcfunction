
execute store result score #health temp run data get entity @s Health 30.0
# execute store result score #max_health temp run scoreboard players get @s max_health
execute store result score #max_health temp run attribute @s max_health get 10
execute if score #health temp <= #max_health temp run particle minecraft:dust{color:[1.0, 0.0, 0.0], scale:1.0} ~ ~1 ~ 0.3 0.6 0.3 1 1