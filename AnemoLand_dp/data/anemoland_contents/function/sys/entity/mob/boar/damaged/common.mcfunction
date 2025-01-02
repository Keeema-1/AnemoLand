tag @s add damaged
damage @s 0
function anemoland_contents:sys/entity/mob/boar/variant/damaged
function anemoland:sys/entity/common/damage/dst/apply
execute unless score @s health matches 1.. run function anemoland_contents:sys/entity/mob/boar/damaged/die/0
execute if score @s health matches 1.. run function anemoland_contents:sys/entity/mob/boar/manual/damaged
