tag @s add damaged
execute on passengers if entity @s[tag=aj.rig_root] run function animated_java:bagikeros/as_own_locator_entities {command:"tag @s add damaged"}
damage @s 0
function anemoland_contents:sys/entity/mob/bagikeros/variant/damaged
function anemoland:sys/entity/common/damage/dst/apply
execute unless score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/bagikeros/damaged/die/0
execute if score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/bagikeros/manual/damaged
