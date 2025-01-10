execute if entity @s[tag=enemy] run scoreboard players operation #drop_bonus temp = @s drop_bonus
execute if entity @s[tag=enemy] run scoreboard players operation #level temp = @s level
execute if entity @s[tag=enemy,tag=!arena] as @a[gamemode=adventure,distance=..64] run function anemoland_contents:sys/entity/mob/martellos/damaged/die/drop
function anemoland_contents:sys/entity/mob/martellos/animation/die
function anemoland_contents:sys/entity/mob/martellos/damaged/die/unlock
execute if entity @s[tag=variant.default] run function anemoland_contents:sys/entity/mob/martellos/variant/default
execute if entity @s[tag=variant.cherry] run function anemoland_contents:sys/entity/mob/martellos/variant/cherry
execute if entity @s[tag=variant.mushroom] run function anemoland_contents:sys/entity/mob/martellos/variant/mushroom
execute if entity @s[tag=variant.stone] run function anemoland_contents:sys/entity/mob/martellos/variant/stone
execute if entity @s[tag=variant.ice] run function anemoland_contents:sys/entity/mob/martellos/variant/ice
execute if entity @s[tag=variant.amethyst] run function anemoland_contents:sys/entity/mob/martellos/variant/amethyst
function anemoland_contents:sys/entity/mob/martellos/manual/die
function anemoland:sys/entity/common/die/0
