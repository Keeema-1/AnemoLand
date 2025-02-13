
particle end_rod ~ 0.3 ~ 0 0 0 0.2 10

playsound minecraft:entity.player.levelup master @a ~ ~ ~ 4 1

summon item ~ 0.1 ~ {Tags:["newly_summoned"],Item:{id:"diamond",count:1},Motion:[0.0d,0.3d,0.0d],Glowing:1b}

data modify storage temp:_ data.rot2vec set value {abs:1.0}
execute if score @s level matches 1 as @e[type=item,tag=newly_summoned,distance=..1] run loot replace entity @s container.0 loot anemoland_contents:item/fish/salmon/medium
execute if score @s level matches 2 as @e[type=item,tag=newly_summoned,distance=..1] run loot replace entity @s container.0 loot anemoland_contents:item/fish/salmon/large
execute as @e[type=item,tag=newly_summoned,distance=..1] facing entity @p[tag=player_check] eyes rotated ~ ~-10 run function anemoland:sys/entity/common/rot2vec/0
execute as @e[type=item,tag=newly_summoned,distance=..1] run data modify entity @s Motion set from storage temp:_ data.vec
tag @e[type=item,tag=newly_summoned,distance=..1] remove newly_summoned

function anemoland:sys/player/item/fishing/end_as_bobber

# 実績
    advancement grant @p[tag=player_check] only anemoland:achievements/eplore/big_fish
