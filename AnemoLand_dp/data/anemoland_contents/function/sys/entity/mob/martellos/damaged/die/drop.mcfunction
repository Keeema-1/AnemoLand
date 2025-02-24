execute unless score #level temp matches 20.. run loot spawn ~ ~ ~ loot anemoland_contents:entity/martellos/1
execute if score #level temp matches 20..29 run loot spawn ~ ~ ~ loot anemoland_contents:entity/martellos/2
execute if score #level temp matches 30.. run loot spawn ~ ~ ~ loot anemoland_contents:entity/martellos/3
execute if score #level temp matches 20..24 if predicate anemoland:random_chance/0_3 run loot spawn ~ ~ ~ loot anemoland_contents:item/amulet_random/silver
execute if score #level temp matches 25..29 if predicate anemoland:random_chance/0_4 run loot spawn ~ ~ ~ loot anemoland_contents:item/amulet_random/silver
execute if score #level temp matches 30..34 if predicate anemoland:random_chance/0_3 run loot spawn ~ ~ ~ loot anemoland_contents:item/amulet_random/gold
execute if score #level temp matches 35..39 if predicate anemoland:random_chance/0_4 run loot spawn ~ ~ ~ loot anemoland_contents:item/amulet_random/gold
execute if score #level temp matches 40.. run loot spawn ~ ~ ~ loot anemoland_contents:item/amulet_random/gold
data modify storage temp:_ data.UUID set from entity @s UUID
execute as @e[type=item,tag=!drop_item_check,distance=..1] run function anemoland:sys/entity/common/die/drop
