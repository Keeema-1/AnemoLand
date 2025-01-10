execute if entity @s[tag=damaged] if data entity @s {HurtTime:0s} run function anemoland_contents:sys/entity/mob/bagikeros/state/end_damaged
execute if score @s anger.time matches 1.. if entity @s[tag=angry] run function anemoland_contents:sys/entity/mob/bagikeros/manual/angry
