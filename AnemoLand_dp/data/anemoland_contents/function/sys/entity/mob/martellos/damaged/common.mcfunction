tag @s add damaged
damage @s 0
execute if entity @s[tag=variant.default] run function anemoland_contents:sys/entity/mob/martellos/variant/damaged
execute if entity @s[tag=variant.cherry] run function anemoland_contents:sys/entity/mob/martellos/variant/cherry_damaged
execute if entity @s[tag=variant.mushroom] run function anemoland_contents:sys/entity/mob/martellos/variant/mushroom_damaged
execute if entity @s[tag=variant.stone] run function anemoland_contents:sys/entity/mob/martellos/variant/stone_damaged
execute if entity @s[tag=variant.ice] run function anemoland_contents:sys/entity/mob/martellos/variant/ice_damaged
execute if entity @s[tag=variant.amethyst] run function anemoland_contents:sys/entity/mob/martellos/variant/amethyst_damaged
function anemoland:sys/entity/common/damage/dst/apply
execute unless score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/martellos/damaged/die/0
execute if score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/martellos/manual/damaged
