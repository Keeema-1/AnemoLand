
summon item ~ ~ ~ {Item:{id:"stick",count:1},Tags:["newly_summoned"]}
execute as @e[type=item,tag=newly_summoned,distance=..1] run function anemoland:sys/player/item/offhand/drop/00

item replace entity @s weapon.offhand with air
