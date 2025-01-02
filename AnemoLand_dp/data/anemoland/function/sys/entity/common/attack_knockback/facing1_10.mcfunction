
function anemoland:sys/entity/common/attack_knockback/common

execute facing entity @s eyes rotated ~ 0 run function anemoland:sys/entity/common/rot2uvec/0
execute store result score @s motion.x run data get storage temp:_ data.vec[0] 10000
execute store result score @s motion.y run data get storage temp:_ data.vec[1] 10000
execute store result score @s motion.z run data get storage temp:_ data.vec[2] 10000
