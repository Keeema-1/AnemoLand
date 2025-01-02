
rotate @s ~ ~

execute if score @s attack_cooltime matches 1.. run scoreboard players remove @s attack_cooltime 1

execute if entity @s[tag=pet] run function anemoland:sys/entity/common/pet_owner/tag_add

execute if entity @s[tag=boss] run function anemoland:sys/entity/common/tick/boss

function anemoland:sys/entity/common/target/tick/0
