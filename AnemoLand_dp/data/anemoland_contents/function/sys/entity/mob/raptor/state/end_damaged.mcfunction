tag @s remove damaged
execute on passengers if entity @s[tag=aj.rig_root] run function animated_java:raptor/as_own_locator_entities {command:"tag @s remove damaged"}
function anemoland_contents:sys/entity/mob/raptor/variant/default
