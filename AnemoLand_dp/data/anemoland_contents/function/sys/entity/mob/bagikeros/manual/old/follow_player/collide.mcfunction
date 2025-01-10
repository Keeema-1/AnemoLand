data modify storage temp:_ data.rot2vec set value {abs:0.2}
function anemoland:sys/entity/common/rot2vec/0
data modify entity @s Motion set from storage temp:_ data.vec
