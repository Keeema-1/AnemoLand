tag @s remove damaged
execute on passengers if entity @s[tag=aj.global.root] run function animated_java:garapas/as_own_locator_entities {command:"tag @s remove damaged"}
execute if entity @s[tag=variant.default] run function anemoland_contents:sys/entity/mob/garapas/variant/default
execute if entity @s[tag=variant.penguin] run function anemoland_contents:sys/entity/mob/garapas/variant/penguin
