
tag @s add player_check

execute positioned ~ -100 ~ summon zombie run function anemoland:sys/player/common/update_pet_menu/set_pet1_item

execute positioned ~ -100 ~ summon zombie run function anemoland:sys/player/common/update_pet_menu/set_pet2_item

execute positioned ~ -100 ~ summon zombie run function anemoland:sys/player/common/update_pet_menu/set_pet3_item

tag @s remove player_check
