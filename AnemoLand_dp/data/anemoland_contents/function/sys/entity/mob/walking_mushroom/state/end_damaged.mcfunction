tag @s remove damaged
execute on passengers if entity @s[tag=aj.global.root] run function animated_java:walking_mushroom/as_own_locator_entities {command:"tag @s remove damaged"}
execute if entity @s[tag=variant.default] run function anemoland_contents:sys/entity/mob/walking_mushroom/variant/default
execute if entity @s[tag=variant.blue] run function anemoland_contents:sys/entity/mob/walking_mushroom/variant/blue
execute if entity @s[tag=variant.brown] run function anemoland_contents:sys/entity/mob/walking_mushroom/variant/brown
execute if entity @s[tag=variant.gold] run function anemoland_contents:sys/entity/mob/walking_mushroom/variant/gold
