tag @s add damaged
execute on passengers if entity @s[tag=aj.global.root] run function animated_java:walking_mushroom/as_own_locator_entities {command:"tag @s add damaged"}
damage @s 0
execute if entity @s[tag=variant.default] run function anemoland_contents:sys/entity/mob/walking_mushroom/variant/damaged
execute if entity @s[tag=variant.blue] run function anemoland_contents:sys/entity/mob/walking_mushroom/variant/blue_damaged
execute if entity @s[tag=variant.brown] run function anemoland_contents:sys/entity/mob/walking_mushroom/variant/brown_damaged
execute if entity @s[tag=variant.gold] run function anemoland_contents:sys/entity/mob/walking_mushroom/variant/gold_damaged
function anemoland:sys/entity/common/damage/dst/apply
execute unless score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/walking_mushroom/damaged/die/0
execute if score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/walking_mushroom/manual/damaged
