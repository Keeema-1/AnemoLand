tag @s add damaged
damage @s 0
function anemoland_contents:sys/entity/mob/decoy1/variant/damaged
function anemoland:sys/entity/common/damage/dst/apply
execute unless score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/decoy1/damaged/die/0
execute if score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/decoy1/manual/damaged
