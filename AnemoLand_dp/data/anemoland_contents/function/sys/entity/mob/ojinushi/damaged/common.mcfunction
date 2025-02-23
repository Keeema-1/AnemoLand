tag @s add damaged
execute on passengers if entity @s[tag=aj.global.root] run function animated_java:ojinushi/as_own_locator_entities {command:"tag @s add damaged"}
damage @s 0
function anemoland_contents:sys/entity/mob/ojinushi/variant/damaged
function anemoland:sys/entity/common/damage/dst/apply
execute unless score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/ojinushi/damaged/die/0
execute if score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/ojinushi/manual/damaged
