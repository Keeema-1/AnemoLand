
execute facing entity @a[tag=pet_owner,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

data modify storage temp:_ data.rot2vec set value {abs:0.2}
execute unless entity @a[tag=pet_owner,distance=..8,limit=1] run data modify storage temp:_ data.rot2vec set value {abs:0.3}
execute unless entity @a[tag=pet_owner,distance=..10,limit=1] run data modify storage temp:_ data.rot2vec set value {abs:0.6}
execute rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
data modify storage temp:_ data.vec[1] set value -0.3d
data modify entity @s Motion set from storage temp:_ data.vec
