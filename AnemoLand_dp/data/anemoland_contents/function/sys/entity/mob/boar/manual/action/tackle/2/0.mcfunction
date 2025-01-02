
# 前方に移動
    data modify storage temp:_ data.rot2vec set value {abs:0.05}
    execute rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
    tp @s ~ ~ ~ ~ ~
    data modify entity @s Motion set from storage temp:_ data.vec

particle block{block_state:{Name:"dirt"}} ~ ~ ~ 0.5 0 0.5 1 3

# playsound block.sand.break hostile @a ~ ~ ~ 1 1

execute if score @s action_time matches 30.. run function anemoland_contents:sys/entity/mob/boar/manual/action/tackle/end
