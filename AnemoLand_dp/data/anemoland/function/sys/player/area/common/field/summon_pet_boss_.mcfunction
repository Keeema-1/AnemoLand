data modify storage temp:_ data.pet_status set from storage temp:_ data.pet_components."minecraft:custom_data".status

# $tag @s add pet.boss$(slot)

$execute positioned ~ 0 ~ run function anemoland_contents:sys/entity/mob/$(pet_id)/summon/default/pet/0
