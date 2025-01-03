execute unless score #level temp matches 20.. run loot spawn ~ ~ ~ loot anemoland_contents:entity/squirrel_head/1
execute if score #level temp matches 20..29 run loot spawn ~ ~ ~ loot anemoland_contents:entity/squirrel_head/2
execute if score #level temp matches 30.. run loot spawn ~ ~ ~ loot anemoland_contents:entity/squirrel_head/3
data modify storage temp:_ data.UUID set from entity @s UUID
execute as @e[type=item,tag=!drop_item_check,distance=..1] run function anemoland:sys/entity/common/die/drop
