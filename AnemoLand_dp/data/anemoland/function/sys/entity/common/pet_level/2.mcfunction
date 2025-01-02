scoreboard players operation #xp.pet temp = #xp.pet2 temp

function anemoland:sys/player/common/player_storage/read

execute unless data storage temp:_ data.player_storage.pet.2.components run return 1

data modify storage temp:_ data.pet_components set from storage temp:_ data.player_storage.pet.2.components

function anemoland:sys/entity/common/pet_level/common

data modify storage temp:_ data.player_storage.pet.2.components set from storage temp:_ data.pet_components

function anemoland:sys/player/common/player_storage/write

function anemoland:sys/player/common/update_pet_menu/0
