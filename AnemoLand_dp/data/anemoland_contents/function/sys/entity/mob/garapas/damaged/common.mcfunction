tag @s add damaged
damage @s 0
execute if entity @s[tag=variant.default] run function anemoland_contents:sys/entity/mob/garapas/variant/damaged
execute if entity @s[tag=variant.penguin] run function anemoland_contents:sys/entity/mob/garapas/variant/penguin_damaged
function anemoland:sys/entity/common/damage/dst/apply
execute unless score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/garapas/damaged/die/0
execute if score @s health matches 1.. run return run function anemoland_contents:sys/entity/mob/garapas/manual/damaged
