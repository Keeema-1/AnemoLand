
execute store result score #storage.pet_xp.value temp run data get storage temp:_ data.pet_components."minecraft:custom_data".status.xp.value
execute store result score #storage.pet_level temp run data get storage temp:_ data.pet_components."minecraft:custom_data".status.level
execute store result score #storage.pet_xp.required temp run data get storage temp:_ data.pet_components."minecraft:custom_data".status.xp.required
execute store result score #storage.pet_xp.required_mul temp run data get storage temp:_ data.pet_components."minecraft:custom_data".status.xp.required_mul

scoreboard players operation #storage.pet_xp.value temp += #xp.pet temp
execute if score #storage.pet_xp.value temp >= #storage.pet_xp.required temp run function anemoland:sys/entity/common/pet_level/level_up/0

execute store result storage temp:_ data.pet_components."minecraft:custom_data".status.xp.value int 1 run scoreboard players get #storage.pet_xp.value temp

# tellraw @a [{"storage":"temp:_","nbt":"data.pet_components.\"minecraft:custom_name\"","interpret":true,"color":"aqua"},{"text":": XP +","color":"green"},{"score":{"name":"#xp.pet","objective":"temp"},"color":"green"}]
