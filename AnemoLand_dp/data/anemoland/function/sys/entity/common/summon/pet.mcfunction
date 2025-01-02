
team join player_side
tag @s add player_side

execute if entity @s[tag=!boss] if data storage temp:_ data.pet_id{slot:1} run tag @s add pet1
execute if entity @s[tag=!boss] if data storage temp:_ data.pet_id{slot:2} run tag @s add pet2
execute if entity @s[tag=!boss] if data storage temp:_ data.pet_id{slot:3} run tag @s add pet3

execute if entity @s[tag=boss] if data storage temp:_ data.pet_id{slot:1} run tag @s add pet.boss1

execute store result score @s max_health run data get storage temp:_ data.pet_status.health.max
execute store result score @s attack.base run data get storage temp:_ data.pet_status.attack.base
execute store result score @s armor.base run data get storage temp:_ data.pet_status.armor.base

scoreboard players operation @s health = @s max_health

scoreboard players operation @s player_id = #player_id temp
