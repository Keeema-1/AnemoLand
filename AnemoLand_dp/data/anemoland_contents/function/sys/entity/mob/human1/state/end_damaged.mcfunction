tag @s remove damaged
execute on passengers if entity @s[tag=aj.rig_root] run function animated_java:human1/as_own_locator_entities {command:"tag @s remove damaged"}
execute if entity @s[tag=variant.default] run function anemoland_contents:sys/entity/mob/human1/variant/default
execute if entity @s[tag=variant.sally] run function anemoland_contents:sys/entity/mob/human1/variant/sally
execute if entity @s[tag=variant.boy1] run function anemoland_contents:sys/entity/mob/human1/variant/boy1
