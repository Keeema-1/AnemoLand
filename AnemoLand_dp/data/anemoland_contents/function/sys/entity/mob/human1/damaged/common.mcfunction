tag @s add damaged
execute on passengers if entity @s[tag=aj.global.root] run function animated_java:human1/as_own_locator_entities {command:"tag @s add damaged"}
damage @s 0
execute if entity @s[tag=variant.default] run function anemoland_contents:sys/entity/mob/human1/variant/damaged
execute if entity @s[tag=variant.sally] run function anemoland_contents:sys/entity/mob/human1/variant/sally_damaged
execute if entity @s[tag=variant.boy1] run function anemoland_contents:sys/entity/mob/human1/variant/boy1_damaged
function anemoland:sys/entity/common/damage/dst/apply
execute unless score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/human1/damaged/die/0
execute if score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/human1/manual/damaged
