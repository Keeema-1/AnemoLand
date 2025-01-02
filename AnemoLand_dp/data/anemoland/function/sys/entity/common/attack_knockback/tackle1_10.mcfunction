
function anemoland:sys/entity/common/attack_knockback/common

function anemoland:sys/entity/common/self_direction/is_leftside

execute if score #self_is_leftside temp matches 1 rotated ~-60 -10 run function anemoland:sys/entity/common/rot2uvec/0
execute unless score #self_is_leftside temp matches 1 rotated ~60 -10 run function anemoland:sys/entity/common/rot2uvec/0
execute store result score @s motion.x run data get storage temp:_ data.vec[0] 10000
execute store result score @s motion.y run data get storage temp:_ data.vec[1] 10000
execute store result score @s motion.z run data get storage temp:_ data.vec[2] 10000

# data modify storage temp:_ data.rot2vec set value {abs:1.0}
# execute positioned ^ ^ ^-4 facing entity @s feet rotated ~ -10 run function anemoland:sys/entity/common/rot2vec/0
# execute store result score @s motion.x run data get storage temp:_ data.vec[0] 10000
# execute store result score @s motion.y run data get storage temp:_ data.vec[1] 10000
# execute store result score @s motion.z run data get storage temp:_ data.vec[2] 10000