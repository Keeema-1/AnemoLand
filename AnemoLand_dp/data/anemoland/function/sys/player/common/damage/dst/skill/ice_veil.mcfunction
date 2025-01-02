function anemoland:sys/player/common/skill_levels/0

scoreboard players set #skill_mul temp 100
execute store result score #temp temp run data get storage temp:_ data.skill_levels.ice_veil
scoreboard players operation #skill_mul temp -= #temp temp
scoreboard players operation #damage temp *= #skill_mul temp
scoreboard players set #temp temp 100
scoreboard players operation #damage temp /= #temp temp

playsound block.glass.break player @a ~ ~ ~ 1 1

particle block{block_state:{Name:"blue_ice"}} ~ ~1 ~ 0.4 0.6 0.4 1 10
particle wax_off ~ ~1 ~ 0.4 0.6 0.4 1 5

scoreboard players reset @s ice_veil_time
