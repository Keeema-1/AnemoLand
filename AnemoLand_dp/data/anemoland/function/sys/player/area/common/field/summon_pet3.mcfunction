
function anemoland:sys/player/common/player_storage/read

data modify storage temp:_ data.pet_id.pet_id set from storage temp:_ data.player_storage.pet.3.components."minecraft:custom_data".pet_id
data modify storage temp:_ data.pet_id.slot set value 3
execute if data storage temp:_ data.player_storage.pet.3.count run function anemoland:sys/player/area/common/field/summon_pet_common with storage temp:_ data.pet_id
