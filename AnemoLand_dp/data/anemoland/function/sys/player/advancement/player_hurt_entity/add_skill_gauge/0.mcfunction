
advancement revoke @s only anemoland:player_hurt_entity/add_skill_gauge

execute if score @s skill_mode matches 1.. run return 1

data modify storage temp:_ data.weapon_data set from entity @s SelectedItem.components."minecraft:custom_data"

execute unless data storage temp:_ data.weapon_data{item_type:"weapon"} run return 1

execute store result score #skill_gauge_get temp run data get storage temp:_ data.weapon_data.status.skill_gauge.get

scoreboard players operation @s skill_gauge += #skill_gauge_get temp

execute if score @s skill_gauge > @s skill_gauge_max run scoreboard players operation @s skill_gauge = @s skill_gauge_max
