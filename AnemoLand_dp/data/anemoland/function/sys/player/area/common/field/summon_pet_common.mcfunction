$data modify storage temp:_ data.pet_status set from storage temp:_ data.player_storage.pet.$(slot).components."minecraft:custom_data".status

# $tag @s add pet$(slot)

$execute positioned ~ 0 ~ run function anemoland:sys/entity/mob/$(pet_id)/summon/pet/0
