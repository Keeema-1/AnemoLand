
function anemoland:sys/entity/common/attack_knockback/common

execute facing entity @s eyes rotated ~ -20 run function anemoland:sys/entity/common/rot2uvec/0
execute store result score @s motion.x run data get storage temp:_ data.vec[0] 5000
execute store result score @s motion.y run data get storage temp:_ data.vec[1] 5000
execute store result score @s motion.z run data get storage temp:_ data.vec[2] 5000
