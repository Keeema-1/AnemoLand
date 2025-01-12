execute if entity @s[tag=enemy] run scoreboard players operation #drop_bonus temp = @s drop_bonus
execute if entity @s[tag=enemy] run scoreboard players operation #level temp = @s level
execute if entity @s[tag=enemy,tag=!arena] run function anemoland_contents:sys/entity/mob/garapas/damaged/die/drop
function anemoland_contents:sys/entity/mob/garapas/animation/die
function anemoland_contents:sys/entity/mob/garapas/damaged/die/unlock
execute if entity @s[tag=variant.default] run function anemoland_contents:sys/entity/mob/garapas/variant/default
execute if entity @s[tag=variant.penguin] run function anemoland_contents:sys/entity/mob/garapas/variant/penguin
function anemoland_contents:sys/entity/mob/garapas/manual/die
function anemoland:sys/entity/common/die/0
