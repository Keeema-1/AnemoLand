
summon item ~ ~ ~ {Item:{id:"minecraft:stick",count:1b},Tags:["newly_summoned"]}
execute as @e[type=item,tag=newly_summoned,distance=..1] run function anemoland:sys/player/menu/common/drop_item/common2
