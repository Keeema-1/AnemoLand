tag @s remove damaged
execute on passengers if entity @s[tag=aj.global.root] run function animated_java:spider/as_own_locator_entities {command:"tag @s remove damaged"}
function anemoland_contents:sys/entity/mob/spider/variant/default
