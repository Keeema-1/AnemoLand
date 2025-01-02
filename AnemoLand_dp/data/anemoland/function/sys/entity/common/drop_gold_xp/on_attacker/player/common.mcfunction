scoreboard players operation @s xp += #xp temp
scoreboard players operation @s gold += #gold temp

execute if score #xp.pet1 temp matches 1.. run function anemoland:sys/entity/common/pet_level/1
execute if score #xp.pet2 temp matches 1.. run function anemoland:sys/entity/common/pet_level/2
execute if score #xp.pet3 temp matches 1.. run function anemoland:sys/entity/common/pet_level/3
