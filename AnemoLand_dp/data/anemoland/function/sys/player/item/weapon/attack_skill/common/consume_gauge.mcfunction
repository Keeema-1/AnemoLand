
execute if score @s skill_mode matches 1 store result score #gauge_consume temp run data get storage temp:_ data.weapon_data.status.attack_skills[0].gauge_consume
execute if score @s skill_mode matches 2 store result score #gauge_consume temp run data get storage temp:_ data.weapon_data.status.attack_skills[1].gauge_consume
execute if score @s skill_mode matches 3 store result score #gauge_consume temp run data get storage temp:_ data.weapon_data.status.attack_skills[2].gauge_consume
execute unless score @s skill_gauge >= #gauge_consume temp run return 1

scoreboard players operation @s skill_gauge -= #gauge_consume temp
