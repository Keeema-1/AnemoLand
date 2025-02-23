tag @s remove damaged
execute on passengers if entity @s[tag=aj.global.root] run function animated_java:decoy1/as_own_locator_entities {command:"tag @s remove damaged"}
function anemoland_contents:sys/entity/mob/decoy1/variant/default
